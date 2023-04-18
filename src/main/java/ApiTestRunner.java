import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.Test;

import static org.junit.Assert.*;

public class ApiTestRunner {
    @Test
    public void testParallel(){
 // .tags("@put ,@post")
        Results results = Runner.path("classpath:features").tags("@TESTSAPI").parallel(1);
       assertTrue(results.getErrorMessages(),results.getFailCount() == 0);
    }
}
