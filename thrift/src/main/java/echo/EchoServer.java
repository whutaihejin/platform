package echo;

import org.apache.thrift.server.TServer;
import org.apache.thrift.server.TSimpleServer;
import org.apache.thrift.transport.TServerSocket;
import org.apache.thrift.transport.TServerTransport;

/**
 * Created by zhanglonghanks on 16/9/28.
 */
public class EchoServer {

    public static void main(String[] args) {
        try {
            EchoHandler handler = new EchoHandler();
            final EchoService.Processor processor = new EchoService.Processor(handler);
            Runnable runner = new Runnable() {
                @Override
                public void run() {
                    action(processor);
                }
            };
            new Thread(runner).start();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void action(EchoService.Processor processor) {
        try {
            TServerTransport serverTransport = new TServerSocket(9090);
            TServer server = new TSimpleServer(new TServer.Args(serverTransport).processor(processor));
            System.out.println("start the echo server ...");
            server.serve();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
