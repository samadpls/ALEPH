package controler
import chisel3._
import org.scalatest._
import chiseltest._

class config_test extends FreeSpec with ChiselScalatestTester {
    "config Test" in {
        test(new configure()){ c =>
            c.io.zimm.poke("b000010101".U)
            c.io.rs1_readdata.poke(0.S)
            c.io.rs1.poke(0.U)
            c.io.rd.poke(0.U)
            c.io.cuurent_vl.poke(0.S)

            c.clock.step(10)
            c.io.vlmax.expect(0.U) 
            c.io.vl.expect(0.S)
            c.io.avl.expect(0.S)
            
        }
    }
}