package com.wj.test;

import java.util.function.Consumer;

/**
 * Created by wisi on 2018/11/21.
 */
interface MathOperation {
    int operation(int a, int b);
}

interface Str {
    String up(String s) ;
}

public class LambdaTest {
    public static void main(String[] args) {
        MathOperation add = new MathOperation() {
            @Override
            public int operation(int a, int b) {
                return a + b;
            }
        };
        System.out.println(add.operation(1, 2));

        MathOperation addLambda = (int a, int b) -> a + b;
        System.out.println(addLambda.operation(2,5));

    }
}
