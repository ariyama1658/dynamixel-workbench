/*******************************************************************************
* Copyright 2016 ROBOTIS CO., LTD.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*******************************************************************************/

/* Authors: Taehun Lim (Darby) */

#include <DynamixelWorkbench.h>

#define DXL_BUS_SERIAL1 "1"            //Dynamixel on Serial1(USART1)  <-OpenCM9.04
#define DXL_BUS_SERIAL2 "2"            //Dynamixel on Serial2(USART2)  <-LN101,BT210
#define DXL_BUS_SERIAL3 "3"            //Dynamixel on Serial3(USART3)  <-OpenCM 485EXP
#define DXL_BUS_SERIAL4 "/dev/ttyUSB0" //Dynamixel on Serial3(USART3)  <-OpenCR

String cmd[5];

DynamixelWorkbench dxl_wb;
uint8_t get_id[16];
uint8_t dxl_cnt = 0;

void setup() 
{
  Serial.begin(57600);
  while(!Serial);

  Serial.println("---------------------------------");
  Serial.println("Set portHandler First");
  Serial.println("---------------------------------");
  Serial.println("port (BAUD)");
  Serial.println("scan");
  Serial.println("ping   (ID)");
  Serial.println("id     (ID) (NEW_ID)");
  Serial.println("baud   (ID) (NEW_BAUD)");
  Serial.println("joint  (ID) (GOAL_POSITION)");
  Serial.println("wheel  (ID) (GOAL_VELOCITY)");
  Serial.println("reboot (ID) ");
  Serial.println("reset  (ID) ");
  Serial.println("---------------------------------");
}

void loop() 
{
  if (Serial.available())
  {
    String read_string = Serial.readStringUntil('\n');

    read_string.trim();

    split(read_string, ' ', cmd);

    if (cmd[0] == "port")
    {
      uint32_t baud = cmd[1].toInt();
      dxl_wb.begin(DXL_BUS_SERIAL3, baud);
    }
    else if (cmd[0] == "scan")
    {      
      dxl_cnt = dxl_wb.scan(get_id);
    }
    else if (cmd[0] == "ping")
    {
      uint8_t id = cmd[1].toInt();

      dxl_wb.ping(id);
    }
    else if (cmd[0] == "id")
    {
      uint8_t id     = cmd[1].toInt();
      uint8_t new_id = cmd[2].toInt();

      if (dxl_wb.setID(id, new_id))
        Serial.println("Succeed to change ID");
      else
        Serial.println("Failed");

    }
    else if (cmd[0] == "baud")
    {
      uint8_t  id       = cmd[1].toInt();
      uint32_t new_baud = cmd[2].toInt();

      if (dxl_wb.setBaud(id, new_baud))
        Serial.println("Succeed to change BaudRate");
      else
        Serial.println("Failed");
    }
    else if (cmd[0] == "joint")
    {
      uint8_t id    = cmd[1].toInt();
      uint16_t goal = cmd[2].toInt();

      dxl_wb.jointMode(id);
      if (dxl_wb.goalPosition(id, goal))
       Serial.println("Succeed!!");
      else
        Serial.println("Failed");
    }
    else if (cmd[0] == "wheel")
    {
      uint8_t id    = cmd[1].toInt();
      int32_t goal = cmd[2].toInt();

      dxl_wb.wheelMode(id);
      if (dxl_wb.goalSpeed(id, goal))
        Serial.println("Succeed!!");
      else
        Serial.println("Failed");
    }
    else if (cmd[0] == "reboot")
    {
      uint8_t id = cmd[1].toInt();

      dxl_wb.reboot(id);
    }
    else if (cmd[0] == "reset")
    {
      uint8_t id = cmd[1].toInt();

      dxl_wb.reset(id);
    }
  }
}

void split(String data, char separator, String* temp)
{
	int cnt = 0;
	int get_index = 0;

  String copy = data;
  
	while(true)
	{
		get_index = copy.indexOf(separator);

		if(-1 != get_index)
		{
			temp[cnt] = copy.substring(0, get_index);

			copy = copy.substring(get_index + 1);
		}
		else
		{
      temp[cnt] = copy.substring(0, copy.length());
			break;
		}
		++cnt;
	}
}