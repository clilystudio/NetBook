package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.c;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.Toc;
import com.clilystudio.netbook.model.mixtoc.LocalTxtToc;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class U {
    private static final String[] a = {"\b*(第.+章)", "(\\d{3})\\s"};

    public static Toc a(String paramString) {
        Toc localToc = new Toc();
        localToc.setHost(paramString);
        try {
            Object localObject = d(paramString);
            if ((localObject == null) || (((List) localObject).size() == 0)) {
                String[] arrayOfString = a;
                int i = 0;
                if (i < 2) {
                    String str1 = arrayOfString[i];
                    BufferedReader localBufferedReader = a.G(paramString);
                    ArrayList localArrayList = new ArrayList();
                    Pattern localPattern = Pattern.compile(str1);
                    int j = 0;
                    int k = 0;
                    int m = 0;
                    label83:
                    String str2 = localBufferedReader.readLine();
                    if (str2 != null) {
                        Matcher localMatcher = localPattern.matcher(str2);
                        if ((localMatcher.find()) && (localMatcher.groupCount() > 0)) {
                            if (localArrayList.size() > 0) {
                                ChapterLink localChapterLink2 = (ChapterLink) localArrayList.get(-1 + localArrayList.size());
                                localChapterLink2.setTxtCharLength(k - localChapterLink2.getTxtCharOffset());
                            }
                            ChapterLink localChapterLink1 = new ChapterLink();
                            localChapterLink1.setUnreadble(false);
                            localChapterLink1.setTitle(localMatcher.group(1));
                            localChapterLink1.setTxtLineOffset(m);
                            localChapterLink1.setTxtCharOffset(k);
                            localArrayList.add(localChapterLink1);
                            j = m;
                        }
                        if (m - j <= 2000) ;
                    }
                    for (localObject = new ArrayList(); ; localObject = localArrayList) {
                        if (((List) localObject).size() != 0)
                            break label336;
                        i++;
                        break;
                        int n = m + 1;
                        k += str2.length();
                        m = n;
                        break label83;
                        if (localArrayList.size() > 0) {
                            ChapterLink localChapterLink3 = (ChapterLink) localArrayList.get(-1 + localArrayList.size());
                            localChapterLink3.setTxtCharLength(k - localChapterLink3.getTxtCharOffset());
                            a(localArrayList, paramString);
                        }
                        localBufferedReader.close();
                    }
                }
            }
            label336:
            if ((localObject == null) || (((List) localObject).size() == 0)) {
                localObject = c(paramString);
                if (((List) localObject).size() > 0)
                    localToc.setRealChapter(false);
            }
            localToc.setChapters((ChapterLink[]) ((List) localObject).toArray(new ChapterLink[((List) localObject).size()]));
            return localToc;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return (Toc) null;
    }

    private static void a(List<ChapterLink> paramList, String paramString) {
        try {
            ObjectOutputStream localObjectOutputStream = new ObjectOutputStream(new FileOutputStream(new File(a.J(c.d), b(paramString))));
            localObjectOutputStream.writeObject(new LocalTxtToc(new File(paramString).length(), paramList));
            localObjectOutputStream.flush();
            localObjectOutputStream.close();
            return;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
    }

    public static String b(String paramString) {
        String str = paramString.trim().substring(1 + paramString.lastIndexOf("/"));
        int i = str.lastIndexOf(".");
        if (i != -1)
            return str.substring(0, i);
        throw new FileNotFoundException();
    }

    private static List<ChapterLink> c(String paramString) {
        BufferedReader localBufferedReader = a.G(paramString);
        ArrayList localArrayList = new ArrayList();
        int i = 1;
        int j = 0;
        int k = 0;
        String str = localBufferedReader.readLine();
        if (str != null) {
            if ((j < i * 5000) && (k != 0))
                break label228;
            if (localArrayList.size() > 0) {
                ChapterLink localChapterLink3 = (ChapterLink) localArrayList.get(-1 + localArrayList.size());
                localChapterLink3.setTxtCharLength(j - localChapterLink3.getTxtCharOffset());
            }
            ChapterLink localChapterLink2 = new ChapterLink();
            localChapterLink2.setUnreadble(false);
            localChapterLink2.setTitle("第" + i + "节");
            localChapterLink2.setTxtCharOffset(j);
            localChapterLink2.setTxtLineOffset(k);
            localArrayList.add(localChapterLink2);
        }
        label228:
        for (int m = i + 1; ; m = i) {
            k++;
            j += str.length();
            i = m;
            break;
            if (localArrayList.size() > 0) {
                ChapterLink localChapterLink1 = (ChapterLink) localArrayList.get(-1 + localArrayList.size());
                localChapterLink1.setTxtCharLength(j - localChapterLink1.getTxtCharOffset());
                a(localArrayList, paramString);
            }
            localBufferedReader.close();
            return localArrayList;
        }
    }

    private static List<ChapterLink> d(String paramString) {
        try {
            File localFile = new File(a.J(c.d), b(paramString));
            if (!localFile.exists())
                return null;
            ObjectInputStream localObjectInputStream = new ObjectInputStream(new FileInputStream(localFile));
            LocalTxtToc localLocalTxtToc = (LocalTxtToc) localObjectInputStream.readObject();
            localObjectInputStream.close();
            if (new File(paramString).length() == localLocalTxtToc.getTxtFileLength())
                return localLocalTxtToc.getChapterLinks();
            localFile.delete();
            return null;
        } catch (IOException localIOException) {
            while (true)
                localIOException.printStackTrace();
        } catch (ClassNotFoundException localClassNotFoundException) {
            while (true)
                localClassNotFoundException.printStackTrace();
        }
    }
}

