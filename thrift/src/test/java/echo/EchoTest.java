package echo;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import java.lang.reflect.Method;

/**
 * Created by zhanglonghanks on 16/9/28.
 */
public class EchoTest {

    private EchoHandler echoHandler;

    @Before
    public void init() {
        echoHandler = new EchoHandler();
    }

    @Test
    public void timeTest() throws Exception {
        Method timeInvoker = echoHandler.getClass().getDeclaredMethod("time");
        timeInvoker.setAccessible(true);
        Object time = timeInvoker.invoke(echoHandler);
        System.out.println(time);
    }

    @Test
    public void timeTestArg() throws Exception {
        Method timeInvoker = echoHandler.getClass().getDeclaredMethod("time", String.class);
        timeInvoker.setAccessible(true);
        Object time = timeInvoker.invoke(echoHandler, "taihejin");
        System.out.println(time);
    }

    @Test
    public void multipyTest() throws Exception {
        System.out.println(echoHandler.echo("taihejin"));
        Assert.assertEquals(15, echoHandler.multiply(3, 5));
    }
}
