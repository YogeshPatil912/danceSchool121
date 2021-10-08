package com.danceClass.test;

import java.util.StringTokenizer;

public class StrTknTest1 {
	public static void main(String[] args) {
		StringTokenizer str = new StringTokenizer("Hello world", " ");
		while(str.hasMoreTokens())
			System.out.println(str.nextToken());
	}
}
