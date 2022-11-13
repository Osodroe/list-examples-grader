import static org.junit.Assert.*;
import org.junit.*;
import java.util.ArrayList;
import java.util.List;

class StringCheck implements StringChecker {
  public boolean checkString(String s) {
    if(s.length() > 5) {return true;}
    else {return false;}
  }
}

public class TestListExamples {
  @Test
    public void filter4() {
        List<String> input1 = new ArrayList<>();
        List<String> expected1 = new ArrayList<>();
        StringChecker sc = new StringCheck();
        input1.add("sandwich");
        input1.add("crab");
        input1.add("sand");
        input1.add("towers");
        expected1.add("sandwich");
        expected1.add("towers");
        assertEquals(expected1, ListExamples.filter(input1, sc));
    }

    @Test
    public void merge5() {
        List<String> input1 = new ArrayList<>();
        List<String> input2 = new ArrayList<>();
        List<String> expected1 = new ArrayList<>();
        input2.add("crab");
        input2.add("power");
        input2.add("sand");
        input1.add("sandwich");
        input2.add("towers");
        expected1.add("crab");
        expected1.add("power");
        expected1.add("sand");
        expected1.add("sandwich");
        expected1.add("towers");
        assertEquals(expected1, ListExamples.merge(input1, input2));
    }
}
