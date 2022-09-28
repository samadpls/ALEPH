package controler
import chisel3._
import org.scalatest._
import chiseltest._
class jalrtest extends FreeSpec with ChiselScalatestTester{
    "immediate Test" in {
        test(new jalr()){c=>
        c.io.addr.poke(10.S)
        c.io.pc_addr.poke(1.S)
        c.io.out.expect(11.S)
        }
    }
}