package project;

import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.io.BufferedReader;
import java.io.IOException;


public class geunyeong {
	public static void main(String[] args) throws IOException {
        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/1613000/AptListService1/getTotalAptList?serviceKey=R7lRK7HjdBh6uznMewpqOxlDXptvNRYPRL0psqVipMs%2FwHUrIoLI%2FdX2cQIZSBuw4AzwQUCtdpDvNx0sXtkbKg%3D%3D&pageNo=1&numOfRows=10"); /*URL*/
        urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=R7lRK7HjdBh6uznMewpqOxlDXptvNRYPRL0psqVipMs%2FwHUrIoLI%2FdX2cQIZSBuw4AzwQUCtdpDvNx0sXtkbKg%3D%3D"); /*Service Key*/
        urlBuilder.append("&" + URLEncoder.encode("bjdCode","UTF-8") + "=" + URLEncoder.encode("2638010100", "UTF-8")); /*������ �ڵ�*/
        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*������ ��ȣ*/
        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*�� ������ ��� ��*/
        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
        System.out.println("Response code: " + conn.getResponseCode());
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
        System.out.println(sb.toString());
    }

}
