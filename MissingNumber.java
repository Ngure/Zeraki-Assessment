public class Main {  
    static int getMissingInt(int k[], int n) 
    { 
        int i, total; 
        total = (n + 1) * (n + 2) / 2; 
        for (i = 0; i < n; i++) 
            total -= k[i]; 
        return total;
    }
	
	public static void main(String args[]) 
    { 
        int k[] = { 1, 2, 4, 5, 6 }; 
        int miss = getMissingInt(k, 5); 
        System.out.println(miss); 
    }
}
