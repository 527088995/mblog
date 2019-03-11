package mblog.util;

import java.util.HashMap;
import java.util.Map;

/**
 * @Auther: suncaoyong (WeChat)
 * @Date: 2019/1/24 10:19
 * @Description:
 */
public class Suncy {


    /**
     * 两字之和数组中的index
     */
    public static int[] twoSum() {
        int[] nums = new int[]{3, 2, 4};
        int target = 6;

        Map<Integer, Integer> map = new HashMap<>();
        for (int i = 0; i < nums.length; i++) {
            map.put(nums[i], i);
        }
        for (int i = 0; i < nums.length; i++) {
            int complement = target - nums[i];
            if (map.containsKey(complement) && map.get(complement) != i) {
                return new int[]{i, map.get(complement)};
            }
        }
        throw new IllegalArgumentException("No two sum solution");
    }


    /**
     * 数字翻转
     */
    public static int reverse(int x) {
        try {
            String flag = x >= 0 ? "" : "-";
            String str = String.valueOf(Math.abs(x));
            String reverseStr = new StringBuilder(str).reverse().toString();

            System.out.println(Integer.valueOf(flag + reverseStr));
            return Integer.valueOf(flag + reverseStr);
        } catch (Exception e) {
            return 0;
        }
    }

    /**
     * 判断是否是回文数
     */
    public static boolean isPalindrome(int x) {
        if (x < 0) {
            return false;
        }
        String xStr1 = x + "";
        StringBuilder xStr2 = new StringBuilder(xStr1).reverse();
        for (int i = 0; i < xStr1.length(); i++) {
            if (xStr1.charAt(i) != xStr2.charAt(i)) {
                return false;
            }
        }
        return true;
    }


    public static void main(String[] args) {
        /*int[] a = twoSum();
        for (int i = 0; i < a.length; i++) {
            System.out.println(a[i]);
        }*/
        //System.out.println(reverse(1534236469));
        System.out.println(isPalindrome(10));


        /*Scanner sc = new Scanner(System.in);
        System.out.println("请输入一个整数：");
        int num = sc.nextInt();

        String str1 = num + "";
        // String str1 = Integer.toString(num);
        // String str1 = String.valueOf(num);

        StringBuilder str2 = new StringBuilder(str1);
        str2.reverse();
        int count = 0;

        for (int i = 0; i < str1.length(); i++) {
            if (str1.charAt(i) != str2.charAt(i)) {
                System.out.println(str1 + "不是回文数");
                break;
            } else {
                count++;
            }
        }
        if (count == str1.length()) {
            System.out.println(str1 + "是回文数");
        }*/


    }

}
