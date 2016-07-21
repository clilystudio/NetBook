package com.clilystudio.netbook.api;

import android.net.Uri;
import android.text.Html;
import android.text.TextUtils;
import android.util.Log;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.AutoCompleteRoot;
import com.clilystudio.netbook.model.BookAdd;
import com.clilystudio.netbook.model.BookGenderRecommend;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.BookListRoot;
import com.clilystudio.netbook.model.BookRankDetailRoot;
import com.clilystudio.netbook.model.BookRankRoot;
import com.clilystudio.netbook.model.BookShelfSyncTime;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.BookTagRoot;
import com.clilystudio.netbook.model.BookUpdate;
import com.clilystudio.netbook.model.CategoryLevelRoot;
import com.clilystudio.netbook.model.CategoryRoot;
import com.clilystudio.netbook.model.ChangeGenderRoot;
import com.clilystudio.netbook.model.ChangeNickNameRoot;
import com.clilystudio.netbook.model.Chapter;
import com.clilystudio.netbook.model.ChapterKeysRoot;
import com.clilystudio.netbook.model.ChapterRoot;
import com.clilystudio.netbook.model.ChineseAllPromRoot;
import com.clilystudio.netbook.model.FollowingsResult;
import com.clilystudio.netbook.model.HotKeywordResult;
import com.clilystudio.netbook.model.MixTocRoot;
import com.clilystudio.netbook.model.NotifCountRoot;
import com.clilystudio.netbook.model.NotificationRoot;
import com.clilystudio.netbook.model.RecommendUgcRoot;
import com.clilystudio.netbook.model.RelateBookRoot;
import com.clilystudio.netbook.model.RemoteBookShelf;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.model.Root;
import com.clilystudio.netbook.model.SearchPromRoot;
import com.clilystudio.netbook.model.SearchResultRoot;
import com.clilystudio.netbook.model.ShelfMsgRoot;
import com.clilystudio.netbook.model.SyncUploadResult;
import com.clilystudio.netbook.model.Toc;
import com.clilystudio.netbook.model.TocSourceRoot;
import com.clilystudio.netbook.model.TocSummary;
import com.clilystudio.netbook.model.Topic;
import com.clilystudio.netbook.model.TopicCount;
import com.clilystudio.netbook.model.UGCBookDetailRoot;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.model.UgcFilterRoot;
import com.clilystudio.netbook.model.UserInfo;
import com.clilystudio.netbook.model.mixtoc.EsChapterRoot;
import com.clilystudio.netbook.model.mixtoc.EsTocRoot;
import com.clilystudio.netbook.model.mixtoc.LdChapterRoot;
import com.clilystudio.netbook.model.mixtoc.LdTocRoot;
import com.clilystudio.netbook.model.mixtoc.SgChapterRoot;
import com.clilystudio.netbook.model.mixtoc.SgTocRoot;
import com.clilystudio.netbook.model.mixtoc.SsChapterJson;
import com.clilystudio.netbook.model.mixtoc.SsTocRoot;
import com.clilystudio.netbook.util.CommonUtil;
import com.github.kevinsawicki.http.HttpRequest;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.JsonParseException;
import com.google.gson.JsonParser;
import com.google.gson.JsonSyntaxException;
import com.umeng.onlineconfig.OnlineConfigAgent;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Type;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

public class ApiService {
    private static final String TAG = ApiService.class.getSimpleName();
    public static final int BUFF_SIZE = 15000;
    private static String mDomain = "zhuishushenqi.com";
    private static String mApiBaseUrl = "http://api." + mDomain;
    private static String mChapterUrl = "http://chapter." + mDomain;
    private static String mChapter2Url = "http://chapter2." + mDomain;
    public static String mStaticsUrl = "http://statics." + mDomain;
    private static final Gson mJsonParser = new GsonBuilder().registerTypeAdapter(Date.class, new DateDeserializer()).create();

    private final UserAgentManager mUserAgentManager;

    public ApiService(UserAgentManager userAgentManager) {
        this.mUserAgentManager = userAgentManager;
    }

    private static <V> V getResponse(HttpRequest httpRequest, Class<V> classOfT) {
        BufferedReader bufferedReader = null;
        V response = null;
        try {
            bufferedReader = httpRequest.bufferedReader();
            response = mJsonParser.fromJson(bufferedReader, classOfT);
        } catch (HttpRequest.HttpRequestException | JsonIOException | JsonSyntaxException e) {
            e.printStackTrace();
        } finally {
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e1) {
                    e1.printStackTrace();
                }
            }
        }
        return response;
    }

    public static void setDomain(String domain) {
        if (!domain.equals(mDomain)) {
            mDomain = domain;
            mApiBaseUrl = "http://api." + mDomain;
            mChapterUrl = "http://chapter." + mDomain;
            mStaticsUrl = "http://statics." + mDomain;
        }
    }

    private static <V> List<V> getListResponse(HttpRequest httpRequest, Class<V> classOfT) {
        ArrayList<V> arrayList = null;
        BufferedReader bufferedReader = httpRequest.bufferedReader();
        try {
            JsonArray jsonArray = new JsonParser().parse(bufferedReader).getAsJsonArray();
            arrayList = new ArrayList<>();
            for (JsonElement jsonElement : jsonArray) {
                arrayList.add(mJsonParser.fromJson(jsonElement, classOfT));
            }
        } catch (JsonParseException e) {
            e.printStackTrace();
        } finally {
            try {
                bufferedReader.close();
            } catch (IOException e1) {
                e1.printStackTrace();
            }
        }
        return arrayList;
    }

    private static ChapterRoot getDefaultChapterRoot() {
        ChapterRoot chapterRoot = new ChapterRoot();
        chapterRoot.setStatus(-3);
        chapterRoot.setChapter(new Chapter());
        return chapterRoot;
    }

    private HttpRequest setRequest(HttpRequest httpRequest) {
        if (DnsManager.isUseDns()) {
            httpRequest = DnsManager.setDnsIp(httpRequest);
        }
        try {
            if (!this.setHeader(httpRequest).ok()) {
                Log.e("ApiService", "Unexpected response code: " + httpRequest.code());
            }
        } catch (HttpRequest.HttpRequestException e) {
            e.printStackTrace();
        }
        return httpRequest;
    }

    private HttpRequest setRequestUserAgent(HttpRequest httpRequest, int deviceType) {
        try {
            if (!this.setUserAgent(httpRequest, deviceType).ok()) {
                Log.e(TAG, "Unexpected response code: " + httpRequest.code());
            }
        } catch (HttpRequest.HttpRequestException e) {
            e.printStackTrace();
        }
        return httpRequest;
    }

    private Root getRoot(String url, HashMap<String, String> values) {
        HttpRequest request = this.setHeader(HttpRequest.post(ApiService.mApiBaseUrl + url));
        request.form(values);
        return ApiService.getResponse(request, Root.class);
    }

    private HttpRequest setHeader(HttpRequest httpRequest) {
        httpRequest.chunk(BUFF_SIZE).bufferSize(BUFF_SIZE);
        UserAgentManager f2 = this.mUserAgentManager;
        String string = "1".equals(OnlineConfigAgent.getInstance().getConfigParams(MyApplication.getInstance(), "ua-toggle")) ? f2.getXUserAgent() : "";
        httpRequest.header(string);
        httpRequest.header("X-User-Agent", this.mUserAgentManager.getXUserAgent());
        httpRequest.header("X-Device-Id", CommonUtil.getAndroidId());
        return httpRequest;
    }

    private HttpRequest setUserAgent(HttpRequest httpRequest, int deviceType) {
        httpRequest.chunk(BUFF_SIZE).bufferSize(BUFF_SIZE);
        httpRequest.userAgent(this.mUserAgentManager.getUserAgent(deviceType));
        if (deviceType == 6) {
            httpRequest.referer("http://bookshelf.html5.qq.com/page?t=pad");
        }
        return httpRequest;
    }

    public final BookShelfSyncTime getBookShelfSyncTime(String token) {
        String url = mApiBaseUrl + String.format(Locale.CHINA, "/user/bookshelf-updated?token=%s", token);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(url)), BookShelfSyncTime.class);
    }

    public final RemoteBookShelf getRemoteBookShelf(String token) {
        String url = mApiBaseUrl + String.format(Locale.CHINA, "/user/bookshelf?token=%s", token);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(url)), RemoteBookShelf.class);
    }

    public final UGCBookDetailRoot getUGCBookDetailRoot(String token, String bookId) {
        String url = mApiBaseUrl + String.format(Locale.CHINA, "/book-list/%s/draft?token=%s", bookId, token);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(url)), UGCBookDetailRoot.class);
    }

    public final ResultStatus addCollectedBookList(String token, String bookList) {
        String url = ApiService.mApiBaseUrl + "/user/collected-book-list";
        HttpRequest httpRequest = this.setHeader(HttpRequest.post(url));
        HashMap<String, String> values = new HashMap<>();
        values.put("token", token);
        values.put("bookList", bookList);
        httpRequest.form(values);
        return ApiService.getResponse(httpRequest, ResultStatus.class);
    }

    public final ResultStatus removeCollectedBookList(String token, String bookList) {
        String url = mApiBaseUrl + "/user/collected-book-list/remove";
        HttpRequest httpRequest = this.setHeader(HttpRequest.post(url));
        HashMap<String, String> values = new HashMap<>();
        values.put("token", token);
        values.put("bookList", bookList);
        httpRequest.form(values);
        return ApiService.getResponse(httpRequest, ResultStatus.class);
    }

    public final NotifCountRoot getNotifCountRoot(String token) {
        String url = mApiBaseUrl + String.format(Locale.CHINA, "/user/notification/count?token=%s", token);
        return ApiService.getResponse(this.setRequest(HttpRequest.post(url)), NotifCountRoot.class);
    }

    public final SyncUploadResult syncShelfAdd(String token, String books) {
        String url = mApiBaseUrl + "/user/bookshelf";
        HttpRequest httpRequest = this.setHeader(HttpRequest.post(url));
        HashMap<String, String> values = new HashMap<>();
        values.put("token", token);
        values.put("books", books);
        httpRequest.form(values);
        return ApiService.getResponse(httpRequest, SyncUploadResult.class);
    }

    public final SyncUploadResult syncShelfFeedAdd(String token, String books) {
        String url = mApiBaseUrl + "/user/feedingBooks";
        HttpRequest httpRequest = this.setHeader(HttpRequest.post(url));
        HashMap<String, String> values = new HashMap<>();
        values.put("token", token);
        values.put("books", books);
        httpRequest.form(values);
        return ApiService.getResponse(httpRequest, SyncUploadResult.class);
    }

    public final SyncUploadResult syncShelfRemove(String token, String books) {
        String url = mApiBaseUrl + String.format(Locale.CHINA, "/user/bookshelf?token=%s&books=%s", token, books);
        return ApiService.getResponse(this.setRequest(HttpRequest.put(url)), SyncUploadResult.class);
    }

    public final SyncUploadResult syncShelfFeedRemove(String token, String books) {
        String url = mApiBaseUrl + String.format(Locale.CHINA, "/user/feedingBooks?token=%s&books=%s", token, books);
        return ApiService.getResponse(this.setRequest(HttpRequest.put(url)), SyncUploadResult.class);
    }

    public final TopicCount getTopicCount(String books) {
        String url = mApiBaseUrl + String.format(Locale.CHINA, "/post/total-count?books=%s", books);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(url)), TopicCount.class);
    }

    public final UserInfo getUserInfo(String token) {
        String url = mApiBaseUrl + String.format(Locale.CHINA, "/user/detail-info?token=%s", token);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(url)), UserInfo.class);
    }

    public final Root doReadImportant(String token) {
        HashMap<String, String> values = new HashMap<>();
        values.put("token", token);
        return this.getRoot("/user/notification/read-important", values);
    }

    public final Root doReadUnimportant(String token) {
        HashMap<String, String> values = new HashMap<>();
        values.put("token", token);
        return this.getRoot("/user/notification/read-unimportant", values);
    }

    public final AutoCompleteRoot getAutoCompleteRoot(String word) {
        String url = mApiBaseUrl + String.format(Locale.CHINA, "/book/auto-complete?query=%s", CommonUtil.encodeUrl(word));
        return ApiService.getResponse(this.setRequest(HttpRequest.get(url)), AutoCompleteRoot.class);
    }

    public final ResultStatus logout(String string) {
        String url = mApiBaseUrl + "/user/logout";
        HashMap<String, String> values = new HashMap<>();
        values.put("token", string);
        HttpRequest httpRequest = this.setHeader(HttpRequest.post(url));
        httpRequest.form(values);
        return ApiService.getResponse(httpRequest, ResultStatus.class);
    }

    public final UGCBookDetailRoot getUGCBookDetailRoot(String bookId) {
        String url = mApiBaseUrl + String.format(Locale.CHINA, "/book-list/%s", bookId);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(url)), UGCBookDetailRoot.class);
    }

    public final ResultStatus addExpWeek(String token) {
        String url = mApiBaseUrl + "/user/add-exp-week";
        HttpRequest httpRequest = this.setHeader(HttpRequest.post(url));
        HashMap<String, String> values = new HashMap<>();
        values.put("token", token);
        values.put("type", "rate");
        httpRequest.form(values);
        return ApiService.getResponse(httpRequest, ResultStatus.class);
    }

    public final RelateBookRoot getRelateBookRoot(String string) {
        String url = mApiBaseUrl + String.format(Locale.CHINA, "/book/%s/recommend", string);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(url)), RelateBookRoot.class);
    }

    public final BookListRoot getBookListRoot(String gender, String type, String major, String minor, int start, int limit) {
        String url = mApiBaseUrl + String.format(Locale.CHINA, "/book/by-categories?gender=%s&type=%s&major=%s&minor=%s&start=%d&limit=%d", gender, type, CommonUtil.encodeUrl(major), CommonUtil.encodeUrl(minor), start, limit);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(url)), BookListRoot.class);
    }

    public final ChapterRoot getChapterRoot(String gId, String nId, int sort, String chapterName, String chapterLink) {
        String url = String.format(Locale.CHINA, "http://api.easou.com/api/bookapp/chapter.m?gid=%s&nid=%s&sort=%d&chapter_name=%s&cid=eef_", gId, nId, sort, CommonUtil.encodeUrl(chapterName));
        HttpRequest httpRequest = this.setUserAgent(HttpRequest.get(url), 3);
        if (!httpRequest.ok() && httpRequest.code() >= 500) {
            return ApiService.getDefaultChapterRoot();
        }
        EsChapterRoot esChapterRoot = ApiService.getResponse(httpRequest, EsChapterRoot.class);
        if (esChapterRoot == null) return null;
        if (esChapterRoot.getContent() != null) {
            ChapterRoot chapterRoot = new ChapterRoot();
            String string7 = CommonUtil.getBody(esChapterRoot.getContent());
            Chapter chapter = new Chapter();
            chapter.setLink(chapterLink);
            chapter.setBody(string7);
            chapterRoot.setChapter(chapter);
            return chapterRoot;
        }
        if (esChapterRoot.isSuccess()) return null;
        return ApiService.getDefaultChapterRoot();
    }

    public final ResultStatus publishUcgCollection(UGCNewCollection collection, String token) {
        String url = ApiService.mApiBaseUrl + "/book-list";
        HttpRequest httpRequest = this.setHeader(HttpRequest.post(url));
        HashMap<String, String> values = new HashMap<>();
        values.put("token", token);
        values.put("title", collection.getTitle());
        values.put("desc", collection.getDesc());
        httpRequest.form(values);
        for (BookSummary bookSummary : collection.getBooks()) {
            httpRequest.form("books[]", bookSummary.getId());
            httpRequest.form("comments[]", bookSummary.getAppendComment());
        }
        return ApiService.getResponse(httpRequest, ResultStatus.class);
    }

    public final ResultStatus modifyUcgCollection(UGCNewCollection collection, String token, String bookId) {
        String url = ApiService.mApiBaseUrl + String.format(Locale.CHINA, "/book-list/%s", bookId);
        HttpRequest httpRequest = this.setHeader(HttpRequest.post(url));
        HashMap<String, String> values = new HashMap<>();
        values.put("token", token);
        values.put("title", collection.getTitle());
        values.put("desc", collection.getDesc());
        httpRequest.form(values);
        for (BookSummary bookSummary : collection.getBooks()) {
            httpRequest.form("books[]", bookSummary.getId());
            httpRequest.form("comments[]", bookSummary.getAppendComment());
        }
        return ApiService.getResponse(httpRequest, ResultStatus.class);
    }

    public final Root changeAvatar(String token, Uri uri) {
        String url = mApiBaseUrl + "/user/change-avatar";
        HttpRequest httpRequest = this.setHeader(HttpRequest.post(url));
        httpRequest.part("token", null, null, token).part("avatar", uri.getPath(), "image/jpeg", new File(uri.getPath())).ok();
        return ApiService.getResponse(httpRequest, Root.class);
    }

    public final UGCBookListRoot getUGCBookListRoot(String string, String string2, int n, int n2, String string3) {
        String string4 = mApiBaseUrl + String.format(Locale.CHINA, "/book-list?duration=%s&sort=%s&start=%d&limit=%d&tag=%s", string, string2, n, n2, string3);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string4)), UGCBookListRoot.class);
    }

    public final SsTocRoot getSsTocRoot(int start, int serial, String sourceId) {
        String url = String.format(Locale.CHINA, "http://bookshelf.html5.qq.com/ajax?start=%d&serialnum=%d&sort=asc&resourceid=%s&m=list_charpter&count=200", start, serial, sourceId);
        return ApiService.getResponse(this.setRequestUserAgent(HttpRequest.get(url), 6), SsTocRoot.class);
    }

    public final List<BookUpdate> getBookUpdateList(List<String> bookIds) {
        if (bookIds.isEmpty()) {
            return Collections.emptyList();
        }
        String url = mApiBaseUrl + String.format(Locale.CHINA, "/book?view=updated&id=%s", TextUtils.join(",", bookIds.toArray()));
        return ApiService.getListResponse(this.setRequest(HttpRequest.get(url)), BookUpdate.class);
    }

    public final List<BookSummary> getBookSummaryList(String[] bookIds) {
        ArrayList<BookSummary> arrayList = new ArrayList<>();
        StringBuilder stringBuffer = new StringBuilder("?");
        for (int i = 0; i < bookIds.length; ++i) {
            if (i == 0) {
                stringBuffer.append("ids=").append(bookIds[i]);
            } else {
                stringBuffer.append("&ids=").append(bookIds[i]);
            }
        }
        String url = mApiBaseUrl + "/books/by-ids" + stringBuffer;
        SearchResultRoot searchResultRoot = ApiService.getResponse(this.setRequest(HttpRequest.get(url)), SearchResultRoot.class);
        if (searchResultRoot == null) return arrayList;
        return searchResultRoot.getBooks();
    }

    public final ChineseAllPromRoot getChineseAllPromRoot(String string) {
        String url = mApiBaseUrl + String.format(Locale.CHINA, "/book/%s/chinese-all-promo", string);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(url)), ChineseAllPromRoot.class);
    }

    public final BookGenderRecommend getBookGenderRecommend(String string) {
        String url = mApiBaseUrl + String.format(Locale.CHINA, "/book/recommend?gender=%s", string);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(url)), BookGenderRecommend.class);
    }

    public final HotKeywordResult getHotKeyword() {
        String url = mApiBaseUrl + "/book/hot-word";
        return ApiService.getResponse(this.setRequest(HttpRequest.get(url)), HotKeywordResult.class);
    }

    public final ResultStatus createUgcCollectionDraft(UGCNewCollection collection, String token) {
        String url = ApiService.mApiBaseUrl + "/book-list/draft";
        HttpRequest httpRequest = this.setHeader(HttpRequest.post(url));
        HashMap<String, String> values = new HashMap<>();
        values.put("token", token);
        values.put("title", collection.getTitle());
        values.put("desc", collection.getDesc());
        httpRequest.form(values);
        for (BookSummary bookSummary : collection.getBooks()) {
            httpRequest.form("books[]", bookSummary.getId());
            httpRequest.form("comments[]", bookSummary.getAppendComment());
        }
        return ApiService.getResponse(httpRequest, ResultStatus.class);
    }

    public final ResultStatus modifyUgcCollectionDraft(UGCNewCollection collection, String token, String bookId) {
        String url = ApiService.mApiBaseUrl + String.format(Locale.CHINA, "/book-list/%s/draft", bookId);
        HttpRequest httpRequest = this.setHeader(HttpRequest.post(url));
        HashMap<String, String> values = new HashMap<>();
        values.put("token", token);
        values.put("title", collection.getTitle());
        values.put("desc", collection.getDesc());
        httpRequest.form(values);
        for (BookSummary bookSummary : collection.getBooks()) {
            httpRequest.form("books[]", bookSummary.getId());
            httpRequest.form("comments[]", bookSummary.getAppendComment());
        }
        return ApiService.getResponse(httpRequest, ResultStatus.class);
    }

    public final String getSsChapterUrl(String sourceId, int serial) {
        String url = String.format(Locale.CHINA, "http://bookshelf.html5.qq.com/ajax?m=show_bookdetail&resourceid=%s&serialid=%d", sourceId, serial);
        return SsChapterJson.getChapterUrl(this.setRequestUserAgent(HttpRequest.get(url), 6).body());
    }

    public final BookTagRoot getBookTagRoot(String tag, int start, int limit) {
        String url = mApiBaseUrl + String.format(Locale.CHINA, "/book/by-tags?tags=%s&start=%d&limit=%d", CommonUtil.encodeUrl(tag), start, limit);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(url)), BookTagRoot.class);
    }

    public final ChapterRoot getQQChapterRoot(String sourceId, int serial) {
        String url = String.format(Locale.CHINA, "http://bookshelf.html5.qq.com/ajax?m=show_bookdetail&resourceid=%s&serialid=%d", sourceId, serial);
        HttpRequest httpRequest = this.setUserAgent(HttpRequest.get(url), 6);
        if (httpRequest.ok()) return SsChapterJson.getChapterRoot(httpRequest.body());
        if (httpRequest.code() < 500) return SsChapterJson.getChapterRoot(httpRequest.body());
        return ApiService.getDefaultChapterRoot();
    }

    public final ChapterRoot getLDChapterRoot(String sourceId, int index, String leidianTK) {
        String url = String.format(Locale.CHINA, "http://m.leidian.com/index.php?c=ebook&a=chapterData&fmt=json&bid=%s&idx=%d&tk=%s", sourceId, index, leidianTK);
        HttpRequest httpRequest = this.setUserAgent(HttpRequest.get(url), 8);
        if (!httpRequest.ok() && httpRequest.code() >= 500) {
            return ApiService.getDefaultChapterRoot();
        }
        LdChapterRoot ldChapterRoot = ApiService.getResponse(httpRequest, LdChapterRoot.class);
        if (ldChapterRoot == null || ldChapterRoot.getContent() == null) return null;
        {
            ChapterRoot chapterRoot = new ChapterRoot();
            String content = ldChapterRoot.getContent();
            if (content != null) {
                content = content.replaceAll("<p>", "").replaceAll("</p>", "\n");
            }
            Chapter chapter = new Chapter();
            chapter.setLink(ldChapterRoot.getSrc());
            chapter.setBody(CommonUtil.getBody(content));
            chapterRoot.setChapter(chapter);
            return chapterRoot;
        }
    }

    public final ResultStatus publishUcgCollection(UGCNewCollection collection, String token, String ugcId) {
        String url = ApiService.mApiBaseUrl + String.format(Locale.CHINA, "/book-list/%s/public", ugcId);
        HttpRequest httpRequest = this.setHeader(HttpRequest.post(url));
        HashMap<String, String> values = new HashMap<>();
        values.put("token", token);
        values.put("title", collection.getTitle());
        values.put("desc", collection.getDesc());
        httpRequest.form(values);
        for (BookSummary bookSummary : collection.getBooks()) {
            httpRequest.form("books[]", bookSummary.getId());
            httpRequest.form("comments[]", bookSummary.getAppendComment());
        }
        return ApiService.getResponse(httpRequest, ResultStatus.class);
    }

    public final BookRankRoot getBookRank() {
        String url = mApiBaseUrl + "/ranking/gender";
        return ApiService.getResponse(this.setRequest(HttpRequest.get(url)), BookRankRoot.class);
    }

    public final Topic getTopic(String token, int start) {
        String url = mApiBaseUrl + String.format(Locale.CHINA, "/user/collected-post?token=%s&start=%s", token, start);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(url)), Topic.class);
    }

    public final List<TocSummary> getTocSummaryList(String bookId) {
        String url = mApiBaseUrl + String.format(Locale.CHINA, "/toc?view=summary&book=%s", bookId);
        return ApiService.getListResponse(this.setRequest(HttpRequest.get(url)), TocSummary.class);
    }

    public final CategoryRoot getCategoryRoot() {
        String url = mApiBaseUrl + "/cats/lv2/statistics";
        return ApiService.getResponse(this.setRequest(HttpRequest.get(url)), CategoryRoot.class);
    }

    public final Toc getToc(String tocId) {
        String url = mApiBaseUrl + String.format(Locale.CHINA, "/toc/%s?view=chapters", tocId);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(url)), Toc.class);
    }

    public final Topic getMyTopic(String token, int start) {
        String url = mApiBaseUrl + String.format(Locale.CHINA, "/user/posted?token=%s&start=%s", token, start);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(url)), Topic.class);
    }

    public final BookAdd addShelfBook(String title, String author, String device) {
        String url = mApiBaseUrl + "/book/add";
        HashMap<String, String> values = new HashMap<>();
        values.put("title", title);
        values.put("author", author);
        values.put("device", device);
        HttpRequest httpRequest = this.setHeader(HttpRequest.post(url));
        httpRequest.form(values);
        return ApiService.getResponse(httpRequest, BookAdd.class);
    }

    public final CategoryLevelRoot getCategoryLevelRoot() {
        String url = mApiBaseUrl + "/cats/lv2";
        return ApiService.getResponse(this.setRequest(HttpRequest.get(url)), CategoryLevelRoot.class);
    }

    public final MixTocRoot getMixTocRoot(String bookId) {
        String url = mApiBaseUrl + String.format(Locale.CHINA, "/mix-toc/%s", bookId);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(url)), MixTocRoot.class);
    }

    public final UGCBookListRoot getUGCBookListRoot(String token, int start) {
        String url = mApiBaseUrl + String.format(Locale.CHINA, "/user/collected-book-list?token=%s&start=%d", token, start);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(url)), UGCBookListRoot.class);
    }

    public final Account g(String string, String string2, String string3) {
        String string4 = mApiBaseUrl + "/user/login";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("platform_code", string);
        hashMap.put("platform_uid", string2);
        hashMap.put("platform_token", string3);
        HttpRequest httpRequest = this.setHeader(HttpRequest.post(string4));
        httpRequest.form(hashMap);
        return ApiService.getResponse(httpRequest, Account.class);
    }

    public final ChapterKeysRoot g(String string, String string2) {
        String string3 = mApiBaseUrl + String.format(Locale.CHINA, "/purchase/book/%s/chapters/bought?token=%s", string2, string);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string3)), ChapterKeysRoot.class);
    }

    public final TocSourceRoot g(String string) {
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/aggregation-source/by-book?book=%s&v=5", string);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string2)), TocSourceRoot.class);
    }

    public final UGCBookListRoot g(String string, int n) {
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/user/posted-book-list?token=%s&start=%d", string, n);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string2)), UGCBookListRoot.class);
    }

    public final FollowingsResult h(String string) {
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/user/followings/%s", string);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string2)), FollowingsResult.class);
    }

    public final UGCBookListRoot h(String string, int n) {
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/user/draft-book-list?token=%s&start=%d", string, n);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string2)), UGCBookListRoot.class);
    }

    public final RecommendUgcRoot i(String string, int n) {
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/book-list/%s/recommend?limit=%s", string, n);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string2)), RecommendUgcRoot.class);
    }

    public final ShelfMsgRoot l() {
        String string = mApiBaseUrl + "/notification/shelfMessage?platform=android";
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string)), ShelfMsgRoot.class);
    }

    public final List<BookSummary> n(String string) {
        ArrayList<BookSummary> arrayList = new ArrayList<>();
        String string2 = CommonUtil.encodeUrl(string);
        String string3 = mApiBaseUrl + String.format(Locale.CHINA, "/book/fuzzy-search?query=%s", string2);
        SearchResultRoot searchResultRoot = ApiService.getResponse(this.setRequest(HttpRequest.get(string3)), SearchResultRoot.class);
        if (searchResultRoot == null) return arrayList;
        return searchResultRoot.getBooks();
    }

    public final SearchResultRoot o(String string) {
        String string2 = CommonUtil.encodeUrl(string);
        String string3 = mApiBaseUrl + "/book/accurate-search?author=" + string2;
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string3)), SearchResultRoot.class);
    }

    public final UgcFilterRoot o() {
        String string = mApiBaseUrl + "/book-list/tagType";
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string)), UgcFilterRoot.class);
    }

    public final ChapterRoot p(String string, String string2) {
        String string3 = String.format(Locale.CHINA, "http://novel.mse.sogou.com/http_interface/getContData.php?md=%s&url=%s", string2, CommonUtil.encodeUrl(string));
        HttpRequest httpRequest = this.setUserAgent(HttpRequest.get(string3), 7);
        boolean bl = httpRequest.ok();
        int n = httpRequest.code();
        if (!bl && n >= 500) {
            return ApiService.getDefaultChapterRoot();
        }
        SgChapterRoot sgChapterRoot = ApiService.getResponse(httpRequest, SgChapterRoot.class);
        if (sgChapterRoot == null || sgChapterRoot.getContent() == null || sgChapterRoot.getContent().length <= 0) return null;
        {
            ChapterRoot chapterRoot = new ChapterRoot();
            String string4 = CommonUtil.getBody(sgChapterRoot.getContent()[0].getBlock());
            Chapter chapter = new Chapter();
            chapter.setLink(string);
            if (string4 != null && string4.contains("</")) {
                string4 = Html.fromHtml(string4.replace("\n", "<br>")).toString();
            }
            chapter.setBody(string4);
            chapterRoot.setChapter(chapter);
            return chapterRoot;
        }
    }

    public final SearchResultRoot p(String string) {
        String string2 = CommonUtil.encodeUrl(string);
        String string3 = mApiBaseUrl + String.format(Locale.CHINA, "/book/fuzzy-search?query=%s", string2) + "&onlyTitle=true";
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string3)), SearchResultRoot.class);
    }

    public final SearchPromRoot q(String string) {
        String string2 = CommonUtil.encodeUrl(string);
        String string3 = mApiBaseUrl + String.format(Locale.CHINA, "/book/search/%s/chinese-all-promo", string2);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string3)), SearchPromRoot.class);
    }

    public final BookInfo r(String string) {
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/book/%s", string);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string2)), BookInfo.class);
    }

    public final NotificationRoot r(String string, String string2) {
        String string3 = CommonUtil.isBlank(string2) ? String.format(Locale.CHINA, "/user/notification/important?token=%s", string) : String.format(Locale.CHINA, "/user/notification/important?token=%s&startTime=%s", string, string2);
        String string4 = mApiBaseUrl + string3;
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string4)), NotificationRoot.class);
    }

    public final NotificationRoot s(String string, String string2) {
        String string3 = CommonUtil.isBlank(string2) ? String.format(Locale.CHINA, "/user/notification/unimportant?token=%s", string) : String.format(Locale.CHINA, "/user/notification/unimportant?token=%s&startTime=%s", string, string2);
        String string4 = mApiBaseUrl + string3;
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string4)), NotificationRoot.class);
    }

    public final SgTocRoot s(String string) {
        String string2 = String.format(Locale.CHINA, "http://novel.mse.sogou.com/http_interface/getDirData.php?md=%s", string);
        return ApiService.getResponse(this.setRequestUserAgent(HttpRequest.get(string2), 7), SgTocRoot.class);
    }

    public final LdTocRoot t(String sourceId) {
        String string2 = String.format(Locale.CHINA, "http://m.leidian.com/ebook/detail/index.php?c=ebook&a=chapterlist&bid=%s&total=100000", sourceId);
        return ApiService.getResponse(this.setRequestUserAgent(HttpRequest.get(string2), 8), LdTocRoot.class);
    }

    public final ChangeNickNameRoot u(String string, String string2) {
        String string3 = mApiBaseUrl + "/user/change-nickname";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("nickname", string2);
        HttpRequest httpRequest = this.setHeader(HttpRequest.post(string3));
        httpRequest.form(hashMap);
        return ApiService.getResponse(httpRequest, ChangeNickNameRoot.class);
    }

    public final String u(String string) {
        String string2 = String.format(Locale.CHINA, "http://m.leidian.com/index.php?c=ebook&a=chapterData&bid=%s&idx=0", string);
        return this.setRequestUserAgent(HttpRequest.get(string2), 8).body();
    }

    public final ChangeGenderRoot v(String string, String string2) {
        String string3 = mApiBaseUrl + "/user/change-gender";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("gender", string2);
        HttpRequest httpRequest = this.setHeader(HttpRequest.post(string3));
        httpRequest.form(hashMap);
        return ApiService.getResponse(httpRequest, ChangeGenderRoot.class);
    }

    public final EsTocRoot v(String string) {
        String[] arrstring = CommonUtil.splitSourceId(string);
        if (arrstring == null) {
            return null;
        }
        String string2 = String.format(Locale.CHINA, "http://api.easou.com/api/bookapp/chapter_list.m?gid=%s&nid=%s&size=100000&cid=eef_", arrstring[0], arrstring[1]);
        return ApiService.getResponse(this.setRequestUserAgent(HttpRequest.get(string2), 3), EsTocRoot.class);
    }

    public final int w(String string) {
        String string2 = String.format(Locale.CHINA, "http://bookshelf.html5.qq.com/ajax?m=show_bookcatalog&resourceid=%s", string);
        return SsChapterJson.getTocCount(this.setRequestUserAgent(HttpRequest.get(string2), 6).body());
    }

    public final ChapterRoot x(String string) {
        String string2 = String.format(Locale.CHINA, "/chapter/%s", CommonUtil.encodeUrl(string));
        String string3 = mChapter2Url + string2;
        HttpRequest httpRequest = HttpRequest.get(string3);
        if (DnsManager.isUseDns()) {
            httpRequest = DnsManager.setDnsIp(httpRequest);
        }
        HttpRequest httpRequest2 = this.setHeader(httpRequest);
        boolean bl = httpRequest2.ok();
        int n = httpRequest2.code();
        if (!bl && n >= 500) {
            return ApiService.getDefaultChapterRoot();
        }
        ChapterRoot chapterRoot = ApiService.getResponse(httpRequest2, ChapterRoot.class);
        if (chapterRoot == null || chapterRoot.getChapter() == null) return chapterRoot;
        {
            chapterRoot.getChapter().setLink(string);
            return chapterRoot;
        }
    }

    public final ResultStatus addUserExp(String token, String type) {
        String string3 = mApiBaseUrl + "/user/add-exp";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", token);
        hashMap.put("type", type);
        HttpRequest httpRequest = this.setHeader(HttpRequest.post(string3));
        httpRequest.form(hashMap);
        return ApiService.getResponse(httpRequest, ResultStatus.class);
    }

    public final ChapterRoot y(String string) {
        String string2 = CommonUtil.encodeUrl(string);
        String string3 = mChapterUrl + String.format(Locale.CHINA, "/chapter/%s", string2);
        HttpRequest httpRequest = HttpRequest.get(string3);
        if (DnsManager.isUseDns()) {
            httpRequest = DnsManager.setDnsIp(httpRequest);
        }
        HttpRequest httpRequest2 = this.setHeader(httpRequest);
        boolean bl = httpRequest2.ok();
        int n = httpRequest2.code();
        if (!bl && n >= 500) {
            return ApiService.getDefaultChapterRoot();
        }
        ChapterRoot chapterRoot = ApiService.getResponse(httpRequest2, ChapterRoot.class);
        if (chapterRoot == null || chapterRoot.getChapter() == null) return chapterRoot;
        {
            chapterRoot.getChapter().setLink(string);
            return chapterRoot;
        }
    }

    public final BookRankDetailRoot z(String string) {
        String string2 = mApiBaseUrl + String.format(Locale.CHINA, "/ranking/%s", string);
        return ApiService.getResponse(this.setRequest(HttpRequest.get(string2)), BookRankDetailRoot.class);
    }

    public final ResultStatus z(String string, String string2) {
        String string3 = mApiBaseUrl + "/user/collected-post/remove";
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("token", string);
        hashMap.put("post", string2);
        HttpRequest httpRequest = this.setHeader(HttpRequest.post(string3));
        httpRequest.form(hashMap);
        return ApiService.getResponse(httpRequest, ResultStatus.class);
    }

    static final class DateDeserializer implements JsonDeserializer<Date> {
        @Override
        public final Date deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) {
            String string = jsonElement.getAsString().replace("Z", "+0000");
            return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.CHINA).parse(string, new ParsePosition(0));
        }
    }
}
