# RISCV-single-cycle
A single cycle processor is a processor that carries out one instruction in a single clock cycle

## Designed by Talha Ahmed

First of all get started by cloning this repository on your machine.
```
git clone https://github.com/samadpls/RISCV-single-cycle.git
```
Create a .txt file and place the hexadecimal code of your instructions simulated on Venus (RISC-V Simulator)
Each instruction's hexadecimal code must be on seperate line as following. This program consists of 9 instructions.
```
00500113
00500193
014000EF
00120293
00502023
00002303
00628663
00310233
00008067
```
Then perform the following step
```
cd src/main/scala/text.txt
```
Open insmem.scala with this command. You can also manually go into the above path and open the file in your favorite text editor.
```
open Memory.scala
```
Find the following line
```
loadMemoryFromFile(mem,"/home/talha/riscv/shaheen/abc.txt")
```
Change the .txt file path to match your file that you created above storing your own program instructions.
After setting up the Memory.scala file, go inside the shaheen folder.
```
cd root/shaheen
```
And enter
```
sbt
```
When the terminal changes to this type
```
sbt:shaheen>
```
Enter this command
```
sbt:shaheen> test:runMain riscv.Launcher Top
```
After you get success
```
sbt:shaheen> test:runMain riscv.Launcher Top --backend-name verilator
```
After success you will get a folder test_run_dir on root of your folder. Go into the examples folder inside.
There you will find the folder named Top. Enter in it and you can find the Top.vcd file which you visualise on gtkwave to
see your program running.
