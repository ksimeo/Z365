package com.ximeo.nazaru.zhivorost365.utilities;

import com.ximeo.nazaru.zhivorost365.domain.models.Order;

import java.util.List;

public class DecoderHelper {

    public static Order decOrder(Order ord) {
//        try {
//            ObjectMapper om = new ObjectMapper();
//            String str = om.writeValueAsString(ord);
//            str = decode(str);
//            Order ord2 = om.readValue(str, Order.class);
//            return ord2;
//        } catch (Exception e) {
//            e.printStackTrace();
            return null;
//        }
    }

    public static List<Order> decodeListOrder(List<Order> ordrs) {
//        try {
//            ObjectMapper om = new ObjectMapper();
//            String str = om.writeValueAsString(ordrs);
//            str = decode(str);
//            List<Order> toSend = om.readValue(str, new TypeReference<List<Order>>() {
//            });
//            return toSend;
//        } catch (Exception e) {
//            e.printStackTrace();
            return null;
//        }
    }

    private static String decode(String str) {
        try {
            return new String(str.getBytes("utf-8"), "cp1251");
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
