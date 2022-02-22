package com.company;

import java.util.Scanner;

class Main
{
/*
 8 12 5 6
 1 1 0 0 0 0 1 0 0 0 0 1
 1 0 0 0 1 1 0 1 0 0 1 1
 0 0 1 0 0 0 0 0 0 0 0 0
 1 0 0 0 0 0 1 0 0 1 0 1
 1 0 0 1 0 0 0 0 0 1 0 0
 1 0 1 0 1 0 0 0 1 0 1 0
 0 0 0 0 1 0 1 0 0 0 0 0
 1 0 1 1 0 1 1 1 0 1 0 1
     */

    public static int n,m,i,j;
    public static int maze[][];
    public static boolean visited[][];
    public static void init() {
        //input N, M, i0, j0 (2 ≤ N,M ≤ 900)
        boolean valid = false;
        while (!valid) {
            try {
                Scanner sc = new Scanner(System.in);
                n = sc.nextInt();
                m = sc.nextInt();
                i = sc.nextInt() - 1;
                j = sc.nextInt() - 1;
                if(n < 2 || n > 999 || m < 2 || m > 999 || i < 0 || j < 0 || i > n || j > m) {
                    System.out.println("error");
                } else {
                    maze = new int[n][m];
                    visited = new boolean[maze.length][maze[0].length];

                    for (int r = 0; r < n; r++) {
                        for (int c = 0; c < m; c++) {
                            maze[r][c] = sc.nextInt();
                        }
                    }
                    valid = true;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

    }

    private static boolean isValid(int x, int y) {
        return (x >= 0 && x < n && y >= 0 && y < m) &&
                maze[x][y] == 0 && !visited[x][y];
    }

    public static int findShortestPath(int i, int j, int min_dist, int dist)
    {
        // exit maze
        if (i == (n-1) || j == (m-1)) {
            return Integer.min(dist, min_dist);
        }

        // set (i, j) cell as visited
        visited[i][j] = true;

        // move bottom
        if (isValid(i + 1, j))
        {
            min_dist = findShortestPath(i + 1, j,
                    min_dist, dist + 1);
        }

        // move right
        if (isValid(i, j + 1))
        {
            min_dist = findShortestPath(i, j + 1,
                    min_dist, dist + 1);
        }

        // move top
        if (isValid(i - 1, j))
        {
            min_dist = findShortestPath(i - 1, j,
                    min_dist, dist + 1);
        }

        // move left
        if (isValid(i, j - 1))
        {
            min_dist = findShortestPath(i, j - 1,
                    min_dist, dist + 1);
        }

        // backtrack
        visited[i][j] = false;

        return min_dist;
    }

    public static int findShortestPathLength()
    {
        // invalid input
        if (maze == null || maze[i][j] == 1) {
            return -1;
        }

        int min_dist;

        min_dist = findShortestPath(i, j, Integer.MAX_VALUE, 0);
        if (min_dist != Integer.MAX_VALUE) {
            return min_dist;
        }
        return -1;
    }

    public static void main(String[] args)
    {
        init();
        int min_dist = findShortestPathLength();

        if (min_dist != -1) {
            System.out.println(min_dist+1);
        }
    }
}