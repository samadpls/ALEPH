package controler
import chisel3._
import chisel3.util._
import chisel3.experimental._

class configure extends Module {
  val io = IO (new Bundle {
    val zimm = Input(UInt(10.W))
    val rs1_readdata = Input(SInt(32.W))
    val rs1 =Input(UInt(32.W))
    val rd = Input(UInt(32.W))
    val cuurent_vl = Input(SInt(32.W))
    val vlmax = Output(UInt(32.W))
    val vl = Output(SInt(32.W))
    val avl = Output(SInt(32.W))
})
    val vlmul = io.zimm(2,0)
    val vsew =io.zimm(5,3)
    val sew = 0.U(32.W)
    val lmul = 0.U(32.W)
    val valmax= WireInit(0.U(32.W))

    when (vlmul === "b101".U){  //lmul=1/8   

        when (vsew === "b000".U){ //sew=8
            valmax :=2.U

        }.elsewhen(vsew === "b001".U){
            valmax :=1.U
        }.elsewhen(vsew === "b010".U){
            valmax :=(1.U >> 1)
        }.elsewhen(vsew ==="b011".U){
            valmax :=(1.U >> 2)
        }


    }.elsewhen(vlmul === "b110".U){ //lmul=1/4

        when (vsew === "b000".U){ //sew=8
            valmax :=4.U
        }.elsewhen(vsew === "b001".U){ //sew=16
            valmax :=2.U
        }.elsewhen(vsew === "b010".U){ //sew=32
            valmax :=1.U
        }.elsewhen(vsew ==="b011".U){ //sew=64
            valmax :=(1.U >> 1)
        }

    }.elsewhen(vlmul === "b111".U){ //lmul=1/2

        when (vsew === "b000".U){ //sew=8
            valmax :=8.U
        }.elsewhen(vsew === "b001".U){ //sew=16
            valmax :=4.U
        }.elsewhen(vsew === "b010".U){ //sew=32
            valmax :=2.U
        }.elsewhen(vsew ==="b011".U){ //sew=64
            valmax :=1.U
        }

    }.elsewhen(vlmul === "b000".U){ //lmul=1
        when (vsew === "b000".U){ //sew=8
            valmax :=16.U
        }.elsewhen(vsew === "b001".U){ //sew=16
            valmax :=8.U
        }.elsewhen(vsew === "b010".U){ //sew=32
            valmax :=4.U
        }.elsewhen(vsew ==="b011".U){ //sew=64
            valmax :=2.U
        }
    }.elsewhen(vlmul === "b001".U){ //lmul=2
        when (vsew === "b000".U){ //sew=8
            valmax :=32.U
        }.elsewhen(vsew === "b001".U){ //sew=16
            valmax :=16.U
        }.elsewhen(vsew === "b010".U){ //sew=32
            valmax :=8.U
        }.elsewhen(vsew ==="b011".U){ //sew=64
            valmax :=4.U
        }
    }.elsewhen(vlmul === "b010".U){ //lmul=4
        when (vsew === "b000".U){ //sew=8
            valmax :=64.U
        }.elsewhen(vsew === "b001".U){ //sew=16
            valmax :=32.U
        }.elsewhen(vsew === "b010".U){ //sew=32
            valmax :=16.U
        }.elsewhen(vsew ==="b011".U){ //sew=64
            valmax :=8.U
        }
    }.elsewhen(vlmul === "b011".U){ //lmul=8
        when (vsew === "b000".U){ //sew=8
            valmax :=128.U
        }.elsewhen(vsew === "b001".U){ //sew=16
            valmax :=64.U
        }.elsewhen(vsew === "b010".U){ //sew=32
            valmax :=32.U
        }.elsewhen(vsew ==="b011".U){ //sew=64
            valmax :=16.U
        }
    }
    when(io.rs1=/=0.U){
        io.avl:=io.rs1_readdata
    }.elsewhen(io.rd=/=0.U && io.rs1===0.U){
        io.avl:= ~(0.S)
    }.otherwise{
        io.avl:=io.cuurent_vl
    } 
    when(io.avl<=valmax.asSInt){
        io.vl:=io.avl
    }.otherwise{
        io.vl:=valmax.asSInt
    }

    io.vlmax := valmax
}
