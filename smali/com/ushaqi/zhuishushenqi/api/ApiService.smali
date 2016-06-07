.class public Lcom/ushaqi/zhuishushenqi/api/ApiService;
.super Ljava/lang/Object;
.source "SourceFile"
# static fields
.field public static a:Ljava/lang/String;
.field private static final b:Ljava/lang/String;
.field private static d:Ljava/lang/String;
.field private static final e:Ljava/lang/String;
.field private static f:Ljava/lang/String;
.field private static g:Ljava/lang/String;
.field private static h:Ljava/lang/String;
.field private static i:Ljava/lang/String;
.field private static j:Ljava/lang/String;
.field private static k:Ljava/lang/String;
.field private static final l:Lcom/google/gson/Gson;
# instance fields
.field private final c:Lcom/ushaqi/zhuishushenqi/api/f;
# direct methods
.method static constructor <clinit>()V
    .locals 3
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService;;
    v0 = v0.getSimpleName();
    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b:Ljava/lang/String;
    v0 = "zhuishushenqi.com";
    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->d:Ljava/lang/String;
    v0 = new StringBuilder();
    v1 = "http://api.";
    v0.<init>(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->d;
    v0 = v0.append(v1);
    v0 = v0.toString();
    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->e:Ljava/lang/String;
    v0 = "localServer";
    v1 = "Official";
    v0 = v0.equals(v1);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = "http://192.168.88.99:8080";
    :goto_0
    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;
    v0 = new StringBuilder();
    v1 = "http://chapter.";
    v0.<init>(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->d;
    v0 = v0.append(v1);
    v0 = v0.toString();
    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->g:Ljava/lang/String;
    v0 = new StringBuilder();
    v1 = "http://chapter2.";
    v0.<init>(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->d;
    v0 = v0.append(v1);
    v0 = v0.toString();
    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->h:Ljava/lang/String;
    v0 = new StringBuilder();
    v1 = "http://statics.";
    v0.<init>(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->d;
    v0 = v0.append(v1);
    v0 = v0.toString();
    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a:Ljava/lang/String;
    v0 = "http://m.baidu.com/s?word=";
    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->i:Ljava/lang/String;
    v0 = "http://tieba.baidu.com/f?kw=";
    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->j:Ljava/lang/String;
    v0 = "http://m.sm.cn/s?q=";
    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->k:Ljava/lang/String;
    v0 = new GsonBuilder();
    v0.<init>();
    v1 = Ljava/util/Date;;
    v2 = new a();
    v2.<init>();
    v0 = v0.registerTypeAdapter(v1, v2);
    v0 = v0.create();
    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->l:Lcom/google/gson/Gson;
    return;
    :cond_0
    v0 = "macServer";
    v1 = "Official";
    v0 = v0.equals(v1);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = "http://192.168.88.19:8080";
    goto :goto_0
    :cond_1
    v0 = "frullyServer";
    v1 = "Official";
    v0 = v0.equals(v1);
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = "http://192.168.88.240:8080";
    goto :goto_0
    :cond_2
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->e;
    goto :goto_0
.end method
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/api/f;)V
    .locals 1
    .prologue
    p0.<init>();
    v0 = new a();
    v0.<init>();
    Lcom/xiaomi/mistatistic/sdk/c.a(v0);
    p0.Lcom/ushaqi/zhuishushenqi/api/ApiService;->c = p1;
    return;
.end method
.method public static Q(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->i;
    v0 = v0.append(v1);
    v0 = v0.append(p0);
    v0 = v0.toString();
    return v0;
.end method
.method public static R(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->j;
    v0 = v0.append(v1);
    v0 = v0.append(p0);
    v0 = v0.toString();
    return v0;
.end method
.method public static S(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->k;
    v0 = v0.append(v1);
    v0 = v0.append(p0);
    v0 = v0.toString();
    return v0;
.end method
.method private a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 6
    .prologue
    v0 = new Date();
    v0.<init>();
    v2 = v0.getTime();
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/e;->a()Z
    move-result v0
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    Lcom/ushaqi/zhuishushenqi/api/e.a(p1);
    :cond_0
    :try_start_0
    v0 = p0.b(p1);
    v0 = v0.c();
    v1 = p1.a();
    v1 = v1.toString();
    v4 = p1.b();
    v5 = "";
    Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v1, v2, v3, v4, v5);
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = new IOException();
    v1 = new StringBuilder();
    v4 = "Unexpected response code: ";
    v1.<init>(v4);
    v4 = p1.b();
    v1 = v1.append(v4);
    v1 = v1.toString();
    v0.<init>(v1);
    throw v0
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    :catch_0
    move-exception v0
    v1 = p1.a();
    v1 = v1.toString();
    v4 = p1.b();
    v5 = v0.getClass();
    v5 = v5.getName();
    Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v1, v2, v3, v4, v5);
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->v()V
    throw v0
    :cond_1
    return p1;
.end method
.method private a(Lcom/github/kevinsawicki/http/HttpRequest;I)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 3
    .prologue
    :try_start_0
    v0 = p0.b(p1, p2);
    v0 = v0.c();
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = new IOException();
    v1 = new StringBuilder();
    v2 = "Unexpected response code: ";
    v1.<init>(v2);
    v2 = p1.b();
    v1 = v1.append(v2);
    v1 = v1.toString();
    v0.<init>(v1);
    throw v0
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    :catch_0
    move-exception v0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->v()V
    throw v0
    :cond_0
    return p1;
.end method
.method private a(Ljava/lang/String;Ljava/util/HashMap;)Lcom/ushaqi/zhuishushenqi/model/Root;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ushaqi/zhuishushenqi/model/Root;"
        }
    .end annotation
    .prologue
    :try_start_0
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v0 = v0.append(p1);
    v0 = v0.toString();
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(p2);
    v1 = Lcom/ushaqi/zhuishushenqi/model/Root;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Root;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    :goto_1
    v0.printStackTrace();
    v0 = 0x0;
    goto :goto_0
    :catch_1
    move-exception v0
    goto :goto_1
.end method
.method private static a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/kevinsawicki/http/HttpRequest;",
            "Ljava/lang/Class",
            "<TV;>;)TV;"
        }
    .end annotation
    .prologue
    v1 = p0.e();
    :try_start_0
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->l;
    v0.fromJson(v1, p1);
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result-object v0
    :try_start_1
    v1.close();
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    :try_start_2
    v2 = new ApiService$JsonException();
    v2.<init>(v0);
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    :catchall_0
    move-exception v0
    :try_start_3
    v1.close();
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    :goto_1
    throw v0
    :catch_1
    move-exception v1
    goto :goto_0
    :catch_2
    move-exception v1
    goto :goto_1
.end method
.method private a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TV;>;)TV;"
        }
    .end annotation
    .prologue
    :try_start_0
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v0 = v0.append(p1);
    v0 = v0.toString();
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, p2);
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = 0x0;
    goto :goto_0
.end method
.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .prologue
    v0 = "http://m.leidian.com/index.php?c=ebook&a=chapterData&bid=%s&idx=%d";
    v1 = 0x2;
    new-array v1, v1, [Ljava/lang/Object;
    v2 = 0x0;
    v1[v2] = p0;
    v2 = 0x1;
    v3 = Ljava/lang/Integer.valueOf(p1);
    v1[v2] = v3;
    v0 = Ljava/lang/String.format(v0, v1);
    return v0;
.end method
.method public static a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .prologue
    v6 = 0x1;
    v5 = 0x0;
    v0 = Landroid/support/design/widget/am.e(p2);
    v1 = Lcom/arcsoft/hpay100/a/a.O(p0);
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v2 = "http://book.easou.com/ta/show.m?gid=%s&nid=%s&st=%d&cu=%s";
    v3 = 0x4;
    new-array v3, v3, [Ljava/lang/Object;
    v4 = v1[v5];
    v3[v5] = v4;
    v1 = v1[v6];
    v3[v6] = v1;
    v1 = 0x2;
    v4 = Ljava/lang/Integer.valueOf(p1);
    v3[v1] = v4;
    v1 = 0x3;
    v3[v1] = v0;
    v0 = Ljava/lang/String.format(v2, v3);
    :goto_0
    return v0;
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .prologue
    v0 = "http://novel.mse.sogou.com/content.php?md=%s&bid=%s&cmd=%s&url=%s&chapter=%s&page=1&referred=detail";
    v1 = 0x5;
    new-array v1, v1, [Ljava/lang/Object;
    v2 = 0x0;
    v1[v2] = p0;
    v2 = 0x1;
    v1[v2] = p1;
    v2 = 0x2;
    v1[v2] = p2;
    v2 = 0x3;
    v1[v2] = p3;
    v2 = 0x4;
    v1[v2] = p4;
    v0 = Ljava/lang/String.format(v0, v1);
    return v0;
.end method
.method public static a(Ljava/lang/String;)V
    .locals 2
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->d;
    v0 = p0.equals(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    :cond_0
    :goto_0
    return;
    :cond_1
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->d;
    v1 = "192.168";
    v0 = v0.contains(v1);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    sput-object p0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->d:Ljava/lang/String;
    v0 = new StringBuilder();
    v1 = "http://api.";
    v0.<init>(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->d;
    v0 = v0.append(v1);
    v0 = v0.toString();
    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;
    v0 = new StringBuilder();
    v1 = "http://chapter.";
    v0.<init>(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->d;
    v0 = v0.append(v1);
    v0 = v0.toString();
    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->g:Ljava/lang/String;
    v0 = new StringBuilder();
    v1 = "http://statics.";
    v0.<init>(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->d;
    v0 = v0.append(v1);
    v0 = v0.toString();
    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a:Ljava/lang/String;
    goto :goto_0
.end method
.method private static a(Ljava/lang/String;JILjava/lang/String;)V
    .locals 7
    .prologue
    :try_start_0
    v0 = new Date();
    v0.<init>();
    v2 = v0.getTime();
    cmp-long v0, v2, p1
    if (v0 <= 0) {
//       if-lez v0, :cond_0
    }
    v0 = new a();
    v2 -= p1;
    v1 = p0;
    v4 = p3;
    v5 = p4;
    v0.<init>(..v5);
    Lcom/xiaomi/mistatistic/sdk/c.a(v0);
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v1 = "api_http_error";
    Lcom/umeng/a/b.a(v0, v1, p4);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :cond_0
    :goto_0
    return;
    :catch_0
    move-exception v0
    goto :goto_0
.end method
.method private static ad(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v0 = v0.append(p0);
    v1 = "&distillate=true";
    v0 = v0.append(v1);
    v0 = v0.toString();
    return v0;
.end method
.method private b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 3
    .prologue
    v1 = 0x3a98;
    v0 = p1.b(v1);
    v0.a(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/api/ApiService;->c;
    v1 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v2 = "ua-toggle";
    v1 = Lcom/umeng/a/b.b(v1, v2);
    v2 = "1";
    v1 = v2.equals(v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v0 = v0.b();
    :goto_0
    p1.a(v0);
    v0 = "X-User-Agent";
    v1 = p0.Lcom/ushaqi/zhuishushenqi/api/ApiService;->c;
    v1 = v1.b();
    p1.a(v0, v1);
    v0 = "X-Device-Id";
    v1 = invoke-static {}, Landroid/support/design/widget/am;->h()Ljava/lang/String;
    p1.a(v0, v1);
    return p1;
    :cond_0
    v0 = "";
    goto :goto_0
.end method
.method private b(Lcom/github/kevinsawicki/http/HttpRequest;I)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 2
    .prologue
    v1 = 0x3a98;
    v0 = p1.b(v1);
    v0.a(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/api/ApiService;->c;
    v0 = v0.a(p2);
    p1.a(v0);
    v0 = 0x6;
    if (p2 != v0) {
//       if-ne p2, v0, :cond_0
    }
    v0 = "http://bookshelf.html5.qq.com/page?t=pad";
    p1.b(v0);
    :cond_0
    return p1;
.end method
.method public static b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .prologue
    v0 = Landroid/support/design/widget/am.e(p2);
    v0 = Landroid/support/design/widget/am.e(v0);
    v1 = "http://book.soso.com/#!/detail/%s/%d/%s";
    v2 = 0x3;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p0;
    v3 = 0x1;
    v4 = Ljava/lang/Integer.valueOf(p1);
    v2[v3] = v4;
    v3 = 0x2;
    v2[v3] = v0;
    v0 = Ljava/lang/String.format(v1, v2);
    return v0;
.end method
.method private static b(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/kevinsawicki/http/HttpRequest;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation
    .prologue
    v1 = p0.e();
    :try_start_0
    v0 = new JsonParser();
    v0.<init>();
    v0 = v0.parse(v1);
    v0 = v0.getAsJsonArray();
    v2 = new ArrayList();
    v2.<init>();
    v3 = v0.iterator();
    :goto_0
    v0 = v3.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v3.next();
    check-cast v0, Lcom/google/gson/JsonElement;
    v4 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->l;
    v0 = v4.fromJson(v0, p1);
    v2.add(v0);
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    goto :goto_0
    :catch_0
    move-exception v0
    :try_start_1
    v0.printStackTrace();
    v2 = new ApiService$JsonException();
    v2.<init>(v0);
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    :catchall_0
    move-exception v0
    :try_start_2
    v1.close();
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    :goto_1
    throw v0
    :cond_0
    :try_start_3
    v1.close();
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    :goto_2
    return v2;
    :catch_1
    move-exception v0
    goto :goto_2
    :catch_2
    move-exception v1
    goto :goto_1
.end method
.method public static j(Ljava/lang/String;I)V
    .locals 5
    .prologue
    v3 = 0x4;
    v1 = 0x0;
    v0 = Landroid/text/TextUtils.isEmpty(p0);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    :cond_0
    :goto_0
    return;
    :cond_1
    v0 = ",";
    v2 = p0.split(v0);
    v0 = v2.length;
    if (v0 < v3) {
//       if-lt v0, v3, :cond_0
    }
    new-array v3, v3, [Ljava/lang/String;
    v0 = v1;
    :goto_1
    v4 = v2.length;
    if (v0 >= v4) {
//       if-ge v0, v4, :cond_2
    }
    v4 = v2[v0];
    v4 = v4.trim();
    v3[v0] = v4;
    v0 = v0 + 0x1;
    goto :goto_1
    :cond_2
    v0 = v3[v1];
    v1 = 0x1;
    v1 = v3[v1];
    v2 = 0x2;
    v2 = v3[v2];
    v3 = Landroid/text/TextUtils.isEmpty(v0);
    if (v3 != 0) {
//       if-nez v3, :cond_3
    }
    v3 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->i;
    v3 = v3.equals(v0);
    if (v3 != 0) {
//       if-nez v3, :cond_3
    }
    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->i:Ljava/lang/String;
    :cond_3
    v0 = Landroid/text/TextUtils.isEmpty(v1);
    if (v0 != 0) {
//       if-nez v0, :cond_4
    }
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->j;
    v0 = v0.equals(v1);
    if (v0 != 0) {
//       if-nez v0, :cond_4
    }
    sput-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->j:Ljava/lang/String;
    :cond_4
    v0 = Landroid/text/TextUtils.isEmpty(v2);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->k;
    v0 = v0.equals(v2);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    sput-object v2, Lcom/ushaqi/zhuishushenqi/api/ApiService;->k:Ljava/lang/String;
    goto :goto_0
.end method
.method private static v()V
    .locals 2
    .prologue
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v1 = "server_error";
    Lcom/umeng/a/b.a(v0, v1);
    return;
.end method
.method private static w()Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    .locals 2
    .prologue
    v0 = new ChapterRoot();
    v0.<init>();
    v1 = -0x3;
    v0.setStatus(v1);
    v1 = new Chapter();
    v1.<init>();
    v0.setChapter(v1);
    return v0;
.end method
.method private static x()Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    .locals 2
    .prologue
    v0 = new ChapterRoot();
    v0.<init>();
    v1 = -0x3;
    v0.setStatus(v1);
    v1 = new Chapter();
    v1.<init>();
    v0.setChapter(v1);
    return v0;
.end method
# virtual methods
.method public final A(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookShelfSyncTime;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/bookshelf-updated?token=%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/BookShelfSyncTime;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelfSyncTime;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final A(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/CommentDetail;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/%s/comment/%s";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v2[v3] = p2;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/CommentDetail;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/CommentDetail;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final B(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/bookshelf?token=%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/recommend-app/android/%s/download";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p2);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ResultStatus;;
    Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = v0.getCause();
    throw v0
.end method
.method public final C(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookReviewRoot;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/review/best-by-book?book=%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/BookReviewRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookReviewRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final C(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UGCBookDetailRoot;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/book-list/%s/draft?token=%s";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p2;
    v3 = 0x1;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/UGCBookDetailRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetailRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final D(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/collected-book-list";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "bookList";
    v1.put(v2, p2);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ResultStatus;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    :goto_1
    v0.printStackTrace();
    v0 = 0x0;
    goto :goto_0
    :catch_1
    move-exception v0
    goto :goto_1
.end method
.method public final D(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ReviewResult;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/review/%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ReviewResult;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ReviewResult;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final E(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookHelpResult;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/help/%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/BookHelpResult;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookHelpResult;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final E(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/collected-book-list/remove";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "bookList";
    v1.put(v2, p2);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ResultStatus;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final F(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GirlTopicResult;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/GirlTopicResult;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicResult;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final F(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Root;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/%s/like";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v2 = "token";
    v1.put(v2, p2);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/Root;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Root;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final G(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/NotifCountRoot;
    .locals 3
    .prologue
    v0 = "/user/notification/count?token=%s";
    v1 = 0x1;
    new-array v1, v1, [Ljava/lang/Object;
    v2 = 0x0;
    v1[v2] = p1;
    v0 = Ljava/lang/String.format(v0, v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/NotifCountRoot;;
    v0 = p0.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/NotifCountRoot;
    return v0;
.end method
.method public final G(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/bookshelf";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.c(v0);
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "books";
    v1.put(v2, p2);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = 0x0;
    goto :goto_0
.end method
.method public final H(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostDetail;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PostDetail;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostDetail;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final H(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/feedingBooks";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.c(v0);
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "books";
    v1.put(v2, p2);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = 0x0;
    goto :goto_0
.end method
.method public final I(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/bookshelf?token=%s&books=%s";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v2[v3] = p2;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.d(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = 0x0;
    goto :goto_0
.end method
.method public final I(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TopicCount;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/total-count?books=%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/TopicCount;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TopicCount;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final J(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/AdsResult;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/advert?platform=android&position=%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/AdsResult;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/AdsResult;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final J(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/feedingBooks?token=%s&books=%s";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v2[v3] = p2;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.d(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = 0x0;
    goto :goto_0
.end method
.method public final K(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GameGiftResponse;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/gameGift/check";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p2);
    v2 = "giftId";
    v1.put(v2, p1);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/GameGiftResponse;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameGiftResponse;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    :goto_1
    v0.printStackTrace();
    v0 = 0x0;
    goto :goto_0
    :catch_1
    move-exception v0
    goto :goto_1
.end method
.method public final K(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserInfo;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/detail-info?token=%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/UserInfo;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final L(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Root;
    .locals 3
    .prologue
    v0 = "/user/notification/read-important";
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v0 = p0.a(v0, v1);
    return v0;
.end method
.method public final M(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Root;
    .locals 3
    .prologue
    v0 = "/user/notification/read-unimportant";
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v0 = p0.a(v0, v1);
    return v0;
.end method
.method public final N(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/AutoCompleteRoot;
    .locals 5
    .prologue
    v0 = Landroid/support/design/widget/am.e(p1);
    v1 = new StringBuilder();
    v1.<init>();
    v2 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v1 = v1.append(v2);
    v2 = "/book/auto-complete?query=%s";
    v3 = 0x1;
    new-array v3, v3, [Ljava/lang/Object;
    v4 = 0x0;
    v3[v4] = v0;
    v0 = Ljava/lang/String.format(v2, v3);
    v0 = v1.append(v0);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/AutoCompleteRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/AutoCompleteRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final O(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/account/vip?token=%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final P(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/logout";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ResultStatus;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final T(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/HotCommentRoot;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/%s/comment/best";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/HotCommentRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/HotCommentRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final U(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UGCBookDetailRoot;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/book-list/%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/UGCBookDetailRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetailRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final V(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/books/by-ids";
    v0 = v0.append(v1);
    v0 = v0.append(p1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final W(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/add-exp-week";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "type";
    v3 = "rate";
    v1.put(v2, v3);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ResultStatus;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final X(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/book/%s/recommend";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final Y(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GameDetail;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/game/%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/GameDetail;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameDetail;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final Z(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GameGroupRoot;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/game/group/%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/GameGroupRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameGroupRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/ushaqi/zhuishushenqi/model/BookHelpList;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/help?duration=%s&sort=%s&start=%d&limit=%d";
    v2 = 0x4;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v2[v3] = p2;
    v3 = 0x2;
    v4 = Ljava/lang/Integer.valueOf(p3);
    v2[v3] = v4;
    v3 = 0x3;
    v4 = 0x14;
    v4 = Ljava/lang/Integer.valueOf(v4);
    v2[v3] = v4;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    if (p5 == 0) {
//       if-eqz p5, :cond_0
    }
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.ad(v0);
    :cond_0
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/BookHelpList;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookHelpList;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/BookListRoot;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/book/by-categories?gender=%s&type=%s&major=%s&minor=%s&start=%d&limit=%d";
    v2 = 0x6;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v2[v3] = p2;
    v3 = 0x2;
    v4 = Landroid/support/design/widget/am.e(p3);
    v2[v3] = v4;
    v3 = 0x3;
    v4 = Landroid/support/design/widget/am.e(p4);
    v2[v3] = v4;
    v3 = 0x4;
    v4 = Ljava/lang/Integer.valueOf(p5);
    v2[v3] = v4;
    v3 = 0x5;
    v4 = 0x32;
    v4 = Ljava/lang/Integer.valueOf(v4);
    v2[v3] = v4;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/BookListRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookListRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    .locals 6
    .prologue
    v5 = 0x3;
    v0 = Landroid/support/design/widget/am.e(p4);
    v1 = "http://api.easou.com/api/bookapp/chapter.m?gid=%s&nid=%s&sort=%d&chapter_name=%s&cid=eef_";
    v2 = 0x4;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v2[v3] = p2;
    v3 = 0x2;
    v4 = Ljava/lang/Integer.valueOf(p3);
    v2[v3] = v4;
    v2[v5] = v0;
    v0 = Ljava/lang/String.format(v1, v2);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v1 = 0x3;
    v0 = p0.b(v0, v1);
    v1 = v0.c();
    v2 = v0.b();
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = 0x1f4;
    if (v2 < v1) {
//       if-lt v2, v1, :cond_0
    }
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->x()Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    :goto_0
    return v0;
    :cond_0
    v1 = 0x0;
    v2 = Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsChapterRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v2);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsChapterRoot;
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v2 = v0.getContent();
    if (v2 == 0) {
//       if-eqz v2, :cond_1
    }
    v1 = new ChapterRoot();
    v1.<init>();
    v0 = v0.getContent();
    v0 = Lcom/arcsoft/hpay100/a/a.z(v0);
    v2 = new Chapter();
    v2.<init>();
    v2.setLink(p5);
    v2.setBody(v0);
    v1.setChapter(v2);
    v0 = v1;
    goto :goto_0
    :cond_1
    v0 = v0.isSuccess();
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->x()Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    goto :goto_0
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
    :cond_2
    v0 = v1;
    goto :goto_0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Z)Lcom/ushaqi/zhuishushenqi/model/DiscussSummaryList;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/by-block?block=%s&duration=%s&sort=%s&type=all&start=%d&limit=%d";
    v2 = 0x5;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p5;
    v3 = 0x1;
    v2[v3] = p1;
    v3 = 0x2;
    v2[v3] = p2;
    v3 = 0x3;
    v4 = Ljava/lang/Integer.valueOf(p3);
    v2[v3] = v4;
    v3 = 0x4;
    v4 = 0x14;
    v4 = Ljava/lang/Integer.valueOf(v4);
    v2[v3] = v4;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    if (p6 == 0) {
//       if-eqz p6, :cond_0
    }
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.ad(v0);
    :cond_0
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/DiscussSummaryList;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/DiscussSummaryList;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final a(II)Lcom/ushaqi/zhuishushenqi/model/GameRoot;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/game/ranklist?start=%d&limit=%d";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v4 = Ljava/lang/Integer.valueOf(p1);
    v2[v3] = v4;
    v3 = 0x1;
    v4 = 0x14;
    v4 = Ljava/lang/Integer.valueOf(v4);
    v2[v3] = v4;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/GameRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final a(Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/charge/order?token=%s&start=%d&limit=%d&platform=android";
    v2 = 0x3;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v4 = Ljava/lang/Integer.valueOf(p2);
    v2[v3] = v4;
    v3 = 0x2;
    v4 = 0xa;
    v4 = Ljava/lang/Integer.valueOf(v4);
    v2[v3] = v4;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PayResult;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/charge/order/%s?token=%s";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v2[v3] = p2;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PayResult;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PayResult;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->e;
    v0 = v0.append(v1);
    v1 = "/voucher?token=%s&type=%s&start=%d&limit=%d";
    v2 = 0x4;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v2[v3] = p2;
    v3 = 0x2;
    v4 = Ljava/lang/Integer.valueOf(p3);
    v2[v3] = v4;
    v3 = 0x3;
    v4 = 0xa;
    v4 = Ljava/lang/Integer.valueOf(v4);
    v2[v3] = v4;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/twitter/%s/reply/comment/%s";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p2;
    v3 = 0x1;
    v2[v3] = p3;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "content";
    v1.put(v2, p4);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PostPublish;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/review";
    v0 = v0.append(v1);
    v1 = v0.toString();
    v2 = new HashMap();
    v2.<init>();
    v0 = "token";
    v2.put(v0, p1);
    v0 = "book";
    v2.put(v0, p2);
    v0 = "title";
    v2.put(v0, p3);
    v0 = "content";
    v2.put(v0, p4);
    v0 = "rating";
    v2.put(v0, p5);
    if (p6 == 0) {
//       if-eqz p6, :cond_0
    }
    v0 = "book";
    :goto_0
    v3 = "from";
    v2.put(v3, v0);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v1);
    v0 = p0.b(v0);
    v0.a(v2);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PostPublish;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :cond_0
    v0 = "community";
    goto :goto_0
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = v0.getCause();
    throw v0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/purchase/buy";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "chapter";
    v1.put(v2, p2);
    v2 = 0x1;
    if (p3 != v2) {
//       if-ne p3, v2, :cond_0
    }
    v2 = "type";
    v3 = "auto";
    v1.put(v2, v3);
    :cond_0
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_0
.end method
.method public final a(Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/book-list";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v1 = p0.b(v0);
    v0 = new HashMap();
    v0.<init>();
    v2 = "token";
    v0.put(v2, p2);
    v2 = "title";
    v3 = p1.getTitle();
    v0.put(v2, v3);
    v2 = "desc";
    v3 = p1.getDesc();
    v0.put(v2, v3);
    v1.a(v0);
    v0 = p1.getBooks();
    v2 = v0.iterator();
    :goto_0
    v0 = v2.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v2.next();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;
    v3 = "books[]";
    v4 = v0.getId();
    v1.a(v3, v4);
    v3 = "comments[]";
    v0 = v0.getAppendComment();
    v1.a(v3, v0);
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    goto :goto_0
    :catch_0
    move-exception v0
    :goto_1
    v0.printStackTrace();
    v0 = 0x0;
    :goto_2
    return v0;
    :cond_0
    :try_start_1
    v0 = Lcom/ushaqi/zhuishushenqi/model/ResultStatus;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v1, v0);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_1
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    goto :goto_2
    :catch_1
    move-exception v0
    goto :goto_1
.end method
.method public final a(Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/book-list/%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p3;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v1 = p0.b(v0);
    v0 = new HashMap();
    v0.<init>();
    v2 = "token";
    v0.put(v2, p2);
    v2 = "title";
    v3 = p1.getTitle();
    v0.put(v2, v3);
    v2 = "desc";
    v3 = p1.getDesc();
    v0.put(v2, v3);
    v1.a(v0);
    v0 = p1.getBooks();
    v2 = v0.iterator();
    :goto_0
    v0 = v2.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v2.next();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;
    v3 = "books[]";
    v4 = v0.getId();
    v1.a(v3, v4);
    v3 = "comments[]";
    v0 = v0.getAppendComment();
    v1.a(v3, v0);
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    goto :goto_0
    :catch_0
    move-exception v0
    :goto_1
    v0.printStackTrace();
    v0 = 0x0;
    :goto_2
    return v0;
    :cond_0
    :try_start_1
    v0 = Lcom/ushaqi/zhuishushenqi/model/ResultStatus;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v1, v0);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_1
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    goto :goto_2
    :catch_1
    move-exception v0
    goto :goto_1
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/ushaqi/zhuishushenqi/model/ReviewList;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/review?duration=%s&sort=%s&type=%s&start=%d&limit=%d";
    v2 = 0x5;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v2[v3] = p3;
    v3 = 0x2;
    v2[v3] = p2;
    v3 = 0x3;
    v4 = Ljava/lang/Integer.valueOf(p4);
    v2[v3] = v4;
    v3 = 0x4;
    v4 = 0x14;
    v4 = Ljava/lang/Integer.valueOf(v4);
    v2[v3] = v4;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    if (p6 == 0) {
//       if-eqz p6, :cond_0
    }
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.ad(v0);
    :cond_0
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ReviewList;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ReviewList;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final a(Ljava/lang/String;Landroid/net/Uri;)Lcom/ushaqi/zhuishushenqi/model/Root;
    .locals 7
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/change-avatar";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v1 = "token";
    v2 = 0x0;
    v3 = 0x0;
    v1 = v0.a(v1, v2, v3, p1);
    v2 = "avatar";
    v3 = p2.getPath();
    v4 = "image/jpeg";
    v5 = new File();
    v6 = p2.getPath();
    v5.<init>(v6);
    v1 = v1.a(v2, v3, v4, v5);
    v1.c();
    v1 = Lcom/ushaqi/zhuishushenqi/model/Root;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Root;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = v0.getCause();
    throw v0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/book-list?duration=%s&sort=%s&start=%d&limit=%d&tag=%s";
    v2 = 0x5;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v2[v3] = p2;
    v3 = 0x2;
    v4 = Ljava/lang/Integer.valueOf(p3);
    v2[v3] = v4;
    v3 = 0x3;
    v4 = 0x14;
    v4 = Ljava/lang/Integer.valueOf(v4);
    v2[v3] = v4;
    v3 = 0x4;
    v2[v3] = p5;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final a()Lcom/ushaqi/zhuishushenqi/model/UshaqiOnlineConfig;
    .locals 2
    .prologue
    v0 = "http://alertserver.ushaqi.com/server_config";
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/UshaqiOnlineConfig;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UshaqiOnlineConfig;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    throw v0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/VoteResult;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/twitter/%s/vote";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p2;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "n";
    v1.put(v2, p3);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/VoteResult;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/VoteResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_0
.end method
.method public final a(IILjava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRoot;
    .locals 4
    .prologue
    v0 = "http://bookshelf.html5.qq.com/ajax?start=%d&serialnum=%d&sort=asc&resourceid=%s&m=list_charpter&count=200";
    v1 = 0x3;
    new-array v1, v1, [Ljava/lang/Object;
    v2 = 0x0;
    v3 = Ljava/lang/Integer.valueOf(p1);
    v1[v2] = v3;
    v2 = 0x1;
    v3 = Ljava/lang/Integer.valueOf(p2);
    v1[v2] = v3;
    v2 = 0x2;
    v1[v2] = p3;
    v0 = Ljava/lang/String.format(v0, v1);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v1 = 0x6;
    v0 = p0.a(v0, v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookUpdate;",
            ">;"
        }
    .end annotation
    .prologue
    v0 = p1.isEmpty();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :goto_0
    return v0;
    :cond_0
    v0 = ",";
    v1 = p1.toArray();
    v0 = Landroid/text/TextUtils.join(v0, v1);
    v1 = new StringBuilder();
    v1.<init>();
    v2 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v1 = v1.append(v2);
    v2 = "/book?view=updated&id=%s";
    v3 = 0x1;
    new-array v3, v3, [Ljava/lang/Object;
    v4 = 0x0;
    v3[v4] = v0;
    v0 = Ljava/lang/String.format(v2, v3);
    v0 = v1.append(v0);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/BookUpdate;;
    Lcom/ushaqi/zhuishushenqi/api/ApiService.b(v0, v1);
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    goto :goto_0
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final a([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookSummary;",
            ">;"
        }
    .end annotation
    .prologue
    v1 = new ArrayList();
    v1.<init>();
    v2 = new StringBuffer();
    v0 = "?";
    v2.<init>(v0);
    v0 = 0x0;
    :goto_0
    v3 = p1.length;
    if (v0 >= v3) {
//       if-ge v0, v3, :cond_1
    }
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v3 = new StringBuilder();
    v4 = "ids=";
    v3.<init>(v4);
    v4 = p1[v0];
    v3 = v3.append(v4);
    v3 = v3.toString();
    v2.append(v3);
    :goto_1
    v0 = v0 + 0x1;
    goto :goto_0
    :cond_0
    v3 = new StringBuilder();
    v4 = "&ids=";
    v3.<init>(v4);
    v4 = p1[v0];
    v3 = v3.append(v4);
    v3 = v3.toString();
    v2.append(v3);
    goto :goto_1
    :cond_1
    v0 = new StringBuilder();
    v0.<init>();
    v3 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v3);
    v3 = "/books/by-ids";
    v0 = v0.append(v3);
    v0 = v0.append(v2);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v2 = Lcom/ushaqi/zhuishushenqi/model/SearchResultRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v2);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/SearchResultRoot;
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0.getBooks();
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    :goto_2
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
    :cond_2
    v0 = v1;
    goto :goto_2
.end method
.method public final aa(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/book/%s/chinese-all-promo";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final ab(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GameGiftRoot;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/gameGift/list?platform=android&gameId=%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/GameGiftRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameGiftRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final ac(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/book/recommend?gender=%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final b(II)Lcom/ushaqi/zhuishushenqi/model/GamesGiftRoot;
    .locals 5
    .prologue
    v4 = 0x0;
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/game/giftCodeList?start=%d&limit=%d";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = Ljava/lang/Integer.valueOf(v4);
    v2[v4] = v3;
    v3 = 0x1;
    v4 = 0x1e;
    v4 = Ljava/lang/Integer.valueOf(v4);
    v2[v3] = v4;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/GamesGiftRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GamesGiftRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final b(Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/ushaqi/zhuishushenqi/model/GirlTopicList;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/by-block?block=girl&duration=%s&sort=%s&start=%d&limit=%d";
    v2 = 0x4;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v2[v3] = p2;
    v3 = 0x2;
    v4 = Ljava/lang/Integer.valueOf(p3);
    v2[v3] = v4;
    v3 = 0x3;
    v4 = 0x14;
    v4 = Ljava/lang/Integer.valueOf(v4);
    v2[v3] = v4;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    if (p5 == 0) {
//       if-eqz p5, :cond_0
    }
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.ad(v0);
    :cond_0
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/GirlTopicList;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicList;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final b()Lcom/ushaqi/zhuishushenqi/model/HotKeywordResult;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/book/hot-word";
    v2 = 0x0;
    new-array v2, v2, [Ljava/lang/Object;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/HotKeywordResult;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/HotKeywordResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final b(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PayBalance;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/account?token=%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PayBalance;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PayBalance;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final b(Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/purchase/record?token=%s&start=%d&limit=%d";
    v2 = 0x3;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v4 = Ljava/lang/Integer.valueOf(p2);
    v2[v3] = v4;
    v3 = 0x2;
    v4 = 0xa;
    v4 = Ljava/lang/Integer.valueOf(v4);
    v2[v3] = v4;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/twitter/article";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "title";
    v1.put(v2, p2);
    v2 = "content";
    v1.put(v2, p3);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PostPublish;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_0
.end method
.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/twitter/%s/comment/%s/report";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p2;
    v3 = 0x1;
    v2[v3] = p3;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "reason";
    v1.put(v2, p4);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PostPublish;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_0
.end method
.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "book";
    v1.put(v2, p2);
    v2 = "title";
    v1.put(v2, p3);
    v2 = "content";
    v1.put(v2, p4);
    v2 = "votes";
    v1.put(v2, p5);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PostPublish;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = v0.getCause();
    throw v0
.end method
.method public final b(Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/book-list/draft";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v1 = p0.b(v0);
    v0 = new HashMap();
    v0.<init>();
    v2 = "token";
    v0.put(v2, p2);
    v2 = "title";
    v3 = p1.getTitle();
    v0.put(v2, v3);
    v2 = "desc";
    v3 = p1.getDesc();
    v0.put(v2, v3);
    v1.a(v0);
    v0 = p1.getBooks();
    v2 = v0.iterator();
    :goto_0
    v0 = v2.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v2.next();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;
    v3 = "books[]";
    v4 = v0.getId();
    v1.a(v3, v4);
    v3 = "comments[]";
    v0 = v0.getAppendComment();
    v1.a(v3, v0);
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    goto :goto_0
    :catch_0
    move-exception v0
    :goto_1
    v0.printStackTrace();
    v0 = 0x0;
    :goto_2
    return v0;
    :cond_0
    :try_start_1
    v0 = Lcom/ushaqi/zhuishushenqi/model/ResultStatus;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v1, v0);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_1
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    goto :goto_2
    :catch_1
    move-exception v0
    goto :goto_1
.end method
.method public final b(Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/book-list/%s/draft";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p3;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.c(v0);
    v1 = p0.b(v0);
    v0 = new HashMap();
    v0.<init>();
    v2 = "token";
    v0.put(v2, p2);
    v2 = "title";
    v3 = p1.getTitle();
    v0.put(v2, v3);
    v2 = "desc";
    v3 = p1.getDesc();
    v0.put(v2, v3);
    v1.a(v0);
    v0 = p1.getBooks();
    v2 = v0.iterator();
    :goto_0
    v0 = v2.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v2.next();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;
    v3 = "books[]";
    v4 = v0.getId();
    v1.a(v3, v4);
    v3 = "comments[]";
    v0 = v0.getAppendComment();
    v1.a(v3, v0);
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    goto :goto_0
    :catch_0
    move-exception v0
    :goto_1
    v0.printStackTrace();
    v0 = 0x0;
    :goto_2
    return v0;
    :cond_0
    :try_start_1
    v0 = Lcom/ushaqi/zhuishushenqi/model/ResultStatus;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v1, v0);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_1
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    goto :goto_2
    :catch_1
    move-exception v0
    goto :goto_1
.end method
.method public final b(Ljava/lang/String;Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/Topic;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/by-book?book=%s&sort=%s&type=normal,vote&start=%d&limit=%d";
    v2 = 0x4;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v2[v3] = p2;
    v3 = 0x2;
    v4 = Ljava/lang/Integer.valueOf(p3);
    v2[v3] = v4;
    v3 = 0x3;
    v4 = 0x14;
    v4 = Ljava/lang/Integer.valueOf(v4);
    v2[v3] = v4;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/Topic;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Topic;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/WXPayOrder;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->e;
    v0 = v0.append(v1);
    v1 = "/charge/weixinpay";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "productId";
    v3 = Ljava/lang/String.valueOf(p2);
    v1.put(v2, v3);
    v2 = "spbillCreateIp";
    v3 = "192.168.10.1";
    v1.put(v2, v3);
    v2 = "tradeType";
    v3 = "APP";
    v1.put(v2, v3);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/WXPayOrder;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/WXPayOrder;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .prologue
    v0 = "http://bookshelf.html5.qq.com/ajax?m=show_bookdetail&resourceid=%s&serialid=%d";
    v1 = 0x2;
    new-array v1, v1, [Ljava/lang/Object;
    v2 = 0x0;
    v1[v2] = p1;
    v2 = 0x1;
    v3 = Ljava/lang/Integer.valueOf(p2);
    v1[v2] = v3;
    v0 = Ljava/lang/String.format(v0, v1);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v1 = 0x6;
    v0 = p0.a(v0, v1);
    v0 = v0.d();
    Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsChapterJson.getChapterUrl(v0);
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final c(Ljava/lang/String;Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/BookReviewRoot;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/review/by-book?book=%s&sort=%s&start=%d&limit=%d";
    v2 = 0x4;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v2[v3] = p2;
    v3 = 0x2;
    v4 = Ljava/lang/Integer.valueOf(p3);
    v2[v3] = v4;
    v3 = 0x3;
    v4 = 0x14;
    v4 = Ljava/lang/Integer.valueOf(v4);
    v2[v3] = v4;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/BookReviewRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookReviewRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final c(Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/BookTagRoot;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/book/by-tags?tags=%s&start=%d&limit=%d";
    v2 = 0x3;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v4 = Landroid/support/design/widget/am.e(p1);
    v2[v3] = v4;
    v3 = 0x1;
    v4 = Ljava/lang/Integer.valueOf(p2);
    v2[v3] = v4;
    v3 = 0x2;
    v4 = 0x32;
    v4 = Ljava/lang/Integer.valueOf(v4);
    v2[v3] = v4;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/BookTagRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookTagRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final c(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    .locals 4
    .prologue
    v0 = "http://bookshelf.html5.qq.com/ajax?m=show_bookdetail&resourceid=%s&serialid=%d";
    v1 = 0x2;
    new-array v1, v1, [Ljava/lang/Object;
    v2 = 0x0;
    v1[v2] = p1;
    v2 = 0x1;
    v3 = Ljava/lang/Integer.valueOf(p2);
    v1[v2] = v3;
    v0 = Ljava/lang/String.format(v0, v1);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v1 = 0x6;
    v0 = p0.b(v0, v1);
    v1 = v0.c();
    v2 = v0.b();
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = 0x1f4;
    if (v2 < v1) {
//       if-lt v2, v1, :cond_0
    }
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->x()Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    :goto_0
    return v0;
    :cond_0
    v0 = v0.d();
    Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsChapterJson.getChapterRoot(v0);
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    goto :goto_0
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final c(Ljava/lang/String;ILjava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    .locals 5
    .prologue
    v2 = 0x0;
    v0 = "http://m.leidian.com/index.php?c=ebook&a=chapterData&fmt=json&bid=%s&idx=%d&tk=%s";
    v1 = 0x3;
    new-array v1, v1, [Ljava/lang/Object;
    v3 = 0x0;
    v1[v3] = p1;
    v3 = 0x1;
    v4 = Ljava/lang/Integer.valueOf(p2);
    v1[v3] = v4;
    v3 = 0x2;
    v1[v3] = p3;
    v0 = Ljava/lang/String.format(v0, v1);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v1 = 0x8;
    v0 = p0.b(v0, v1);
    v1 = v0.c();
    v3 = v0.b();
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = 0x1f4;
    if (v3 < v1) {
//       if-lt v3, v1, :cond_0
    }
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->x()Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    :goto_0
    return v0;
    :cond_0
    v1 = Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdChapterRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdChapterRoot;
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v1 = v0.getContent();
    if (v1 == 0) {
//       if-eqz v1, :cond_2
    }
    v1 = new ChapterRoot();
    v1.<init>();
    v3 = v0.getContent();
    if (v3 == 0) {
//       if-eqz v3, :cond_1
    }
    v2 = "<p>";
    v4 = "";
    v2 = v3.replaceAll(v2, v4);
    v3 = "</p>";
    v4 = "\n";
    v2 = v2.replaceAll(v3, v4);
    :cond_1
    v2 = Lcom/arcsoft/hpay100/a/a.z(v2);
    v3 = new Chapter();
    v3.<init>();
    v0 = v0.getSrc();
    v3.setLink(v0);
    v3.setBody(v2);
    v1.setChapter(v3);
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    v0 = v1;
    goto :goto_0
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
    :cond_2
    v0 = v2;
    goto :goto_0
.end method
.method public final c()Lcom/ushaqi/zhuishushenqi/model/ChargeTypes;
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->e;
    v0 = v0.append(v1);
    v1 = "/charge/product?platform=android";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ChargeTypes;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChargeTypes;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final c(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostCountRoot;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/post-count-by-book?bookId=%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PostCountRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostCountRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/twitter/%s/comment";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p2;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "content";
    v1.put(v2, p3);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PostPublish;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_0
.end method
.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "block";
    v3 = "girl";
    v1.put(v2, v3);
    v2 = "title";
    v1.put(v2, p2);
    v2 = "content";
    v1.put(v2, p3);
    v2 = "votes";
    v1.put(v2, p4);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PostPublish;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = v0.getCause();
    throw v0
.end method
.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/twitter/book";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "bookId";
    v1.put(v2, p2);
    v2 = "title";
    v1.put(v2, p3);
    v2 = "content";
    v1.put(v2, p4);
    v2 = "score";
    v1.put(v2, p5);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PostPublish;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = 0x0;
    goto :goto_0
.end method
.method public final c(Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/book-list/%s/public";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p3;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.c(v0);
    v1 = p0.b(v0);
    v0 = new HashMap();
    v0.<init>();
    v2 = "token";
    v0.put(v2, p2);
    v2 = "title";
    v3 = p1.getTitle();
    v0.put(v2, v3);
    v2 = "desc";
    v3 = p1.getDesc();
    v0.put(v2, v3);
    v1.a(v0);
    v0 = p1.getBooks();
    v2 = v0.iterator();
    :goto_0
    v0 = v2.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v2.next();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;
    v3 = "books[]";
    v4 = v0.getId();
    v1.a(v3, v4);
    v3 = "comments[]";
    v0 = v0.getAppendComment();
    v1.a(v3, v0);
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    goto :goto_0
    :catch_0
    move-exception v0
    :goto_1
    v0.printStackTrace();
    v0 = 0x0;
    :goto_2
    return v0;
    :cond_0
    :try_start_1
    v0 = Lcom/ushaqi/zhuishushenqi/model/ResultStatus;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v1, v0);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_1
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    goto :goto_2
    :catch_1
    move-exception v0
    goto :goto_1
.end method
.method public final c(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->e;
    v0 = v0.append(v1);
    v1 = "/charge/youyifupay";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "productId";
    v3 = Ljava/lang/String.valueOf(p2);
    v1.put(v2, v3);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final d(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->e;
    v0 = v0.append(v1);
    v1 = "/charge/alipay";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "productId";
    v3 = Ljava/lang/String.valueOf(p2);
    v1.put(v2, v3);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v2 = p0.b(v0);
    v2.a(v1);
    v0 = Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v2, v0);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;
    v1 = "tag";
    v3 = new StringBuilder();
    v4 = "req.contentLength :";
    v3.<init>(v4);
    v2 = v2.f();
    v2 = v3.append(v2);
    v2 = v2.toString();
    Landroid/util/Log.d(v1, v2);
    v1 = "tag";
    v2 = new StringBuilder();
    v3 = "aliPayOrder :";
    v2.<init>(v3);
    v3 = v0.toString();
    v2 = v2.append(v3);
    v2 = v2.toString();
    Landroid/util/Log.d(v1, v2);
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final d()Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/ranking/gender";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final d(Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/GamePostRoot;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/by-game?game=%s&start=%s&limit=%d";
    v2 = 0x3;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v4 = Ljava/lang/Integer.valueOf(p2);
    v2[v3] = v4;
    v3 = 0x2;
    v4 = 0xa;
    v4 = Ljava/lang/Integer.valueOf(v4);
    v2[v3] = v4;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/GamePostRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "title";
    v1.put(v2, p2);
    v2 = "content";
    v1.put(v2, p3);
    v2 = "votes";
    v1.put(v2, p4);
    v2 = "block";
    v3 = "ramble";
    v1.put(v2, v3);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PostPublish;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = v0.getCause();
    throw v0
.end method
.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TimelineResult;
    .locals 5
    .prologue
    v4 = 0x0;
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/twitter/timeline/%s?token=%s";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    v2[v4] = p2;
    v3 = 0x1;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    if (p3 == 0) {
//       if-eqz p3, :cond_0
    }
    v1 = new HashMap();
    v1.<init>();
    v2 = "last";
    v1.put(v2, p3);
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0, v1, v4);
    :goto_0
    :try_start_0
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/TimelineResult;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TimelineResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_1
    return v0;
    :cond_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    goto :goto_0
    :catch_0
    move-exception v0
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->b;
    v0 = v0.getMessage();
    Landroid/util/Log.e(v1, v0);
    v0 = 0x0;
    goto :goto_1
.end method
.method public final d(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/model/Topic;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/collected-post?token=%s&start=%s";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v4 = Ljava/lang/Integer.valueOf(p2);
    v2[v3] = v4;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/Topic;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Topic;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final d(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/TocSummary;",
            ">;"
        }
    .end annotation
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/toc?view=summary&book=%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/TocSummary;;
    Lcom/ushaqi/zhuishushenqi/api/ApiService.b(v0, v1);
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final e()Lcom/ushaqi/zhuishushenqi/model/CategoryRoot;
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/cats/lv2/statistics";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/CategoryRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/CategoryRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final e(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/DeleteResult;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->e;
    v0 = v0.append(v1);
    v1 = "/charge/order/%s?token=%s";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v2[v3] = p2;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.d(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/DeleteResult;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/DeleteResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_0
.end method
.method public final e(Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/%s/comment?start=%d&limit=%d";
    v2 = 0x3;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v4 = Ljava/lang/Integer.valueOf(p2);
    v2[v3] = v4;
    v3 = 0x2;
    v4 = 0x1e;
    v4 = Ljava/lang/Integer.valueOf(v4);
    v2[v3] = v4;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 5
    .prologue
    v4 = 0x0;
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/twitter/%s/report";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p2;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "reason";
    v1.put(v2, p3);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PostPublish;;
    Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v4;
    :catch_0
    move-exception v0
    goto :goto_0
.end method
.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "book";
    v1.put(v2, p2);
    v2 = "title";
    v1.put(v2, p3);
    v2 = "content";
    v1.put(v2, p4);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PostPublish;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = v0.getCause();
    throw v0
.end method
.method public final e(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Toc;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/toc/%s?view=chapters";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/Toc;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Toc;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final e(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/model/Topic;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/posted?token=%s&start=%s";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v4 = Ljava/lang/Integer.valueOf(p2);
    v2[v3] = v4;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/Topic;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Topic;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookAdd;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/book/add";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "title";
    v1.put(v2, p1);
    v2 = "author";
    v1.put(v2, p2);
    v2 = "device";
    v1.put(v2, p3);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/BookAdd;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookAdd;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = v0.getCause();
    throw v0
.end method
.method public final f()Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/cats/lv2";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final f(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterSingleKey;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/purchase/chapter/%s/key?token=%s";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v2[v3] = p2;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ChapterSingleKey;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChapterSingleKey;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final f(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/MixTocRoot;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/mix-toc/%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/MixTocRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/MixTocRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final f(Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/review/%s/comment?start=%d&limit=%d";
    v2 = 0x3;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v4 = Ljava/lang/Integer.valueOf(p2);
    v2[v3] = v4;
    v3 = 0x2;
    v4 = 0x1e;
    v4 = Ljava/lang/Integer.valueOf(v4);
    v2[v3] = v4;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/%s/comment";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p2);
    v2 = "content";
    v1.put(v2, p3);
    v2 = "replyTo";
    v1.put(v2, p4);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ResultStatus;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = v0.getCause();
    throw v0
.end method
.method public final f(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/collected-book-list?token=%s&start=%d";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v4 = Ljava/lang/Integer.valueOf(p2);
    v2[v3] = v4;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Account;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/login";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "platform_code";
    v1.put(v2, p1);
    v2 = "platform_uid";
    v1.put(v2, p2);
    v2 = "platform_token";
    v1.put(v2, p3);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/Account;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Account;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = v0.getCause();
    throw v0
.end method
.method public final g(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/purchase/book/%s/chapters/bought?token=%s";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p2;
    v3 = 0x1;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final g()Lcom/ushaqi/zhuishushenqi/model/MhdListRoot;
    .locals 2
    .prologue
    v0 = "http://mhjk.1391.com/comic/bigbooklist";
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/MhdListRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/MhdListRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "title";
    v1.put(v2, p2);
    v2 = "content";
    v1.put(v2, p3);
    v2 = "block";
    v1.put(v2, p4);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PostPublish;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = v0.getCause();
    throw v0
.end method
.method public final g(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/aggregation-source/by-book?book=%s&v=5";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final g(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/posted-book-list?token=%s&start=%d";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v4 = Ljava/lang/Integer.valueOf(p2);
    v2[v3] = v4;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final h(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/FollowingsResult;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/followings/%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/FollowingsResult;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/FollowingsResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_0
.end method
.method public final h()Lcom/ushaqi/zhuishushenqi/model/MysteryBookList;
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/book/mystery-box";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/MysteryBookList;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/MysteryBookList;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/help";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "title";
    v1.put(v2, p2);
    v2 = "content";
    v1.put(v2, p3);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PostPublish;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = v0.getCause();
    throw v0
.end method
.method public final h(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/follow";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "followeeId";
    v1.put(v2, p2);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ResultStatus;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_0
.end method
.method public final h(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/draft-book-list?token=%s&start=%d";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v4 = Ljava/lang/Integer.valueOf(p2);
    v2[v3] = v4;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final i(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/FollowersResult;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/followers/%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/FollowersResult;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/FollowersResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_0
.end method
.method public final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "content";
    v1.put(v2, p3);
    v2 = "game";
    v1.put(v2, p2);
    v2 = "block";
    v3 = "game";
    v1.put(v2, v3);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PostPublish;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = v0.getCause();
    throw v0
.end method
.method public final i(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot;
    .locals 5
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/book-list/%s/recommend?limit=%s";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v4 = 0x3;
    v4 = Ljava/lang/Integer.valueOf(v4);
    v2[v3] = v4;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final i(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/unfollow";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "followeeId";
    v1.put(v2, p2);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ResultStatus;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_0
.end method
.method public final i()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/MenuAd;",
            ">;"
        }
    .end annotation
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/recommend-app/android/piority";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/MenuAd;;
    Lcom/ushaqi/zhuishushenqi/api/ApiService.b(v0, v1);
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final j(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/twitter/hottweets";
    v0 = v0.append(v1);
    v0 = v0.toString();
    if (p1 == 0) {
//       if-eqz p1, :cond_0
    }
    v1 = new HashMap();
    v1.<init>();
    v2 = "last";
    v1.put(v2, p1);
    v2 = 0x0;
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0, v1, v2);
    :goto_0
    :try_start_0
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_1
    return v0;
    :cond_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    goto :goto_0
    :catch_0
    move-exception v0
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->b;
    v0 = v0.getMessage();
    Landroid/util/Log.e(v1, v0);
    v0 = 0x0;
    goto :goto_1
.end method
.method public final j(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/twitter";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "content";
    v1.put(v2, p2);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PostPublish;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_0
.end method
.method public final j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/%s/comment";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p2);
    v2 = "content";
    v1.put(v2, p3);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ResultStatus;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = v0.getCause();
    throw v0
.end method
.method public final j()Lcom/ushaqi/zhuishushenqi/model/SplashRoot;
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/splashes/android";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/SplashRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/SplashRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final k(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/twitter/delete/%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p2;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PostPublish;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_0
.end method
.method public final k()Lcom/ushaqi/zhuishushenqi/model/TopicSummary;
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/post-count";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/TopicSummary;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TopicSummary;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final k(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TweetsResult;
    .locals 5
    .prologue
    v4 = 0x0;
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/%s/twitter";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    v3 = v3.getUser();
    v3 = v3.getId();
    v2[v4] = v3;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    if (p1 == 0) {
//       if-eqz p1, :cond_0
    }
    v1 = new HashMap();
    v1.<init>();
    v2 = "last";
    v1.put(v2, p1);
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0, v1, v4);
    :goto_0
    :try_start_0
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/TweetsResult;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TweetsResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_1
    return v0;
    :cond_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    goto :goto_0
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_1
.end method
.method public final k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/VoteResult;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/%s/vote";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p2);
    v2 = "n";
    v1.put(v2, p3);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/VoteResult;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/VoteResult;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = v0.getCause();
    throw v0
.end method
.method public final l(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;
    .locals 4
    .prologue
    v3 = 0x0;
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/twitter/%s/comments";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    if (p2 == 0) {
//       if-eqz p2, :cond_0
    }
    v1 = new HashMap();
    v1.<init>();
    v2 = "last";
    v1.put(v2, p2);
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0, v1, v3);
    :goto_0
    :try_start_0
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_1
    return v0;
    :cond_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    goto :goto_0
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_1
.end method
.method public final l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/%s/comment/%s/report";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v2[v3] = p2;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "reason";
    v1.put(v2, p3);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ResultStatus;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = v0.getCause();
    throw v0
.end method
.method public final l()Lcom/ushaqi/zhuishushenqi/model/ShelfMsgRoot;
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/notification/shelfMessage?platform=android";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ShelfMsgRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ShelfMsgRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final l(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TweetResult;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/twitter/%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/TweetResult;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TweetResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_0
.end method
.method public final m(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/twitter/retweet/%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p2;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PostPublish;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_0
.end method
.method public final m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/review/%s/helpful";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p2;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "is_helpful";
    v1.put(v2, p3);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ResultStatus;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = v0.getCause();
    throw v0
.end method
.method public final m(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserInfoResult;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/info/%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/UserInfoResult;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UserInfoResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_0
.end method
.method public final m()Lcom/ushaqi/zhuishushenqi/model/VipPlan;
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/purchase/vip/plan";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/VipPlan;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/VipPlan;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final n(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/FollowResult;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/%s/has/followed/%s";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v2[v3] = p2;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.b(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/FollowResult;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/FollowResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_0
.end method
.method public final n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/statistics/read";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "date";
    v1.put(v2, p1);
    v2 = "uuid";
    v1.put(v2, p2);
    v2 = "book";
    v1.put(v2, p3);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ResultStatus;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = v0.getCause();
    throw v0
.end method
.method public final n()Lcom/ushaqi/zhuishushenqi/model/SecretAppItemRoot;
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/recommend-app/android/mystery-box";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/SecretAppItemRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/SecretAppItemRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final n(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookSummary;",
            ">;"
        }
    .end annotation
    .prologue
    v1 = new ArrayList();
    v1.<init>();
    v0 = Landroid/support/design/widget/am.e(p1);
    v2 = new StringBuilder();
    v2.<init>();
    v3 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v2 = v2.append(v3);
    v3 = "/book/fuzzy-search?query=%s";
    v4 = 0x1;
    new-array v4, v4, [Ljava/lang/Object;
    v5 = 0x0;
    v4[v5] = v0;
    v0 = Ljava/lang/String.format(v3, v4);
    v0 = v2.append(v0);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v2 = Lcom/ushaqi/zhuishushenqi/model/SearchResultRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v2);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/SearchResultRoot;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0.getBooks();
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
    :cond_0
    v0 = v1;
    goto :goto_0
.end method
.method public final o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/%s/comment/%s/like";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v2[v3] = p2;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p3);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ResultStatus;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    :goto_1
    v0.printStackTrace();
    v0 = 0x0;
    goto :goto_0
    :catch_1
    move-exception v0
    goto :goto_1
.end method
.method public final o(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/SearchResultRoot;
    .locals 3
    .prologue
    v0 = Landroid/support/design/widget/am.e(p1);
    v1 = new StringBuilder();
    v1.<init>();
    v2 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v1 = v1.append(v2);
    v2 = "/book/accurate-search?author=";
    v1 = v1.append(v2);
    v0 = v1.append(v0);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/SearchResultRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/SearchResultRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final o(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TweetsResult;
    .locals 4
    .prologue
    v3 = 0x0;
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/%s/twitter";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    if (p2 == 0) {
//       if-eqz p2, :cond_0
    }
    v1 = new HashMap();
    v1.<init>();
    v2 = "last";
    v1.put(v2, p2);
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0, v1, v3);
    :goto_0
    :try_start_0
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/TweetsResult;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TweetsResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_1
    return v0;
    :cond_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    goto :goto_0
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_1
.end method
.method public final o()Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot;
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/book-list/tagType";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final p(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    .locals 5
    .prologue
    v3 = 0x0;
    v0 = Landroid/support/design/widget/am.e(p1);
    v1 = "http://novel.mse.sogou.com/http_interface/getContData.php?md=%s&url=%s";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    v2[v3] = p2;
    v3 = 0x1;
    v2[v3] = v0;
    v0 = Ljava/lang/String.format(v1, v2);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v1 = 0x7;
    v0 = p0.b(v0, v1);
    v1 = v0.c();
    v2 = v0.b();
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = 0x1f4;
    if (v2 < v1) {
//       if-lt v2, v1, :cond_0
    }
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->x()Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    :goto_0
    return v0;
    :cond_0
    v1 = 0x0;
    v2 = Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgChapterRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v2);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgChapterRoot;
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v2 = v0.getContent();
    if (v2 == 0) {
//       if-eqz v2, :cond_2
    }
    v2 = v0.getContent();
    v2 = v2.length;
    if (v2 <= 0) {
//       if-lez v2, :cond_2
    }
    v1 = new ChapterRoot();
    v1.<init>();
    v0 = v0.getContent();
    v2 = 0x0;
    v0 = v0[v2];
    v0 = v0.getBlock();
    v0 = Lcom/arcsoft/hpay100/a/a.z(v0);
    v2 = new Chapter();
    v2.<init>();
    v2.setLink(p1);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v3 = "</";
    v3 = v0.contains(v3);
    if (v3 == 0) {
//       if-eqz v3, :cond_1
    }
    v3 = "\n";
    v4 = "<br>";
    v0 = v0.replace(v3, v4);
    v0 = Landroid/text/Html.fromHtml(v0);
    v0 = v0.toString();
    :cond_1
    v2.setBody(v0);
    v1.setChapter(v2);
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    v0 = v1;
    goto :goto_0
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
    :cond_2
    v0 = v1;
    goto :goto_0
.end method
.method public final p()Lcom/ushaqi/zhuishushenqi/model/GameRoot;
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/game?platform=android";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/GameRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultServer;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/statistics/install";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "platform";
    v3 = "android";
    v1.put(v2, v3);
    v2 = "device-id";
    v1.put(v2, p1);
    v2 = "recommended";
    v1.put(v2, p2);
    v2 = "op";
    v1.put(v2, p3);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ResultServer;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultServer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_0
.end method
.method public final p(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/SearchResultRoot;
    .locals 5
    .prologue
    v0 = Landroid/support/design/widget/am.e(p1);
    v1 = new StringBuilder();
    v1.<init>();
    v2 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v1 = v1.append(v2);
    v2 = "/book/fuzzy-search?query=%s";
    v3 = 0x1;
    new-array v3, v3, [Ljava/lang/Object;
    v4 = 0x0;
    v3[v4] = v0;
    v0 = Ljava/lang/String.format(v2, v3);
    v0 = v1.append(v0);
    v1 = "&onlyTitle=true";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/SearchResultRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/SearchResultRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final q()Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/game/layoutv2/?platform=android";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final q(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ReviewHistory;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/review/one-by-book-user?book=%s&token=%s";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v3 = 0x1;
    v2[v3] = p2;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ReviewHistory;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ReviewHistory;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final q(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/SearchPromRoot;
    .locals 5
    .prologue
    v0 = Landroid/support/design/widget/am.e(p1);
    v1 = new StringBuilder();
    v1.<init>();
    v2 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v1 = v1.append(v2);
    v2 = "/book/search/%s/chinese-all-promo";
    v3 = 0x1;
    new-array v3, v3, [Ljava/lang/Object;
    v4 = 0x0;
    v3[v4] = v0;
    v0 = Ljava/lang/String.format(v2, v3);
    v0 = v1.append(v0);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/SearchPromRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/SearchPromRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final r(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookInfo;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/book/%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/BookInfo;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookInfo;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final r()Lcom/ushaqi/zhuishushenqi/model/GameCatRoot;
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/game/cat/topgames";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/GameCatRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameCatRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final r(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;
    .locals 4
    .prologue
    v3 = 0x1;
    v2 = 0x0;
    v0 = Lcom/arcsoft/hpay100/a/a.Q(p2);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = "/user/notification/important?token=%s";
    new-array v1, v3, [Ljava/lang/Object;
    v1[v2] = p1;
    v0 = Ljava/lang/String.format(v0, v1);
    :goto_0
    v1 = new StringBuilder();
    v1.<init>();
    v2 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v1 = v1.append(v2);
    v0 = v1.append(v0);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :cond_0
    v0 = "/user/notification/important?token=%s&startTime=%s";
    v1 = 0x2;
    new-array v1, v1, [Ljava/lang/Object;
    v1[v2] = p1;
    v1[v3] = p2;
    v0 = Ljava/lang/String.format(v0, v1);
    goto :goto_0
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final s()Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/game/layoutv2/microgame";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final s(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;
    .locals 4
    .prologue
    v3 = 0x1;
    v2 = 0x0;
    v0 = Lcom/arcsoft/hpay100/a/a.Q(p2);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = "/user/notification/unimportant?token=%s";
    new-array v1, v3, [Ljava/lang/Object;
    v1[v2] = p1;
    v0 = Ljava/lang/String.format(v0, v1);
    :goto_0
    v1 = new StringBuilder();
    v1.<init>();
    v2 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v1 = v1.append(v2);
    v0 = v1.append(v0);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :cond_0
    v0 = "/user/notification/unimportant?token=%s&startTime=%s";
    v1 = 0x2;
    new-array v1, v1, [Ljava/lang/Object;
    v1[v2] = p1;
    v1[v3] = p2;
    v0 = Ljava/lang/String.format(v0, v1);
    goto :goto_0
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final s(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocRoot;
    .locals 3
    .prologue
    v0 = "http://novel.mse.sogou.com/http_interface/getDirData.php?md=%s";
    v1 = 0x1;
    new-array v1, v1, [Ljava/lang/Object;
    v2 = 0x0;
    v1[v2] = p1;
    v0 = Ljava/lang/String.format(v0, v1);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v1 = 0x7;
    v0 = p0.a(v0, v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final t()Lcom/ushaqi/zhuishushenqi/model/IKanshuUrlResult;
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/promotion/17k";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/IKanshuUrlResult;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/IKanshuUrlResult;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final t(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PurchaseVipResult;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/purchase/vip/plan";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "plan";
    v1.put(v2, p2);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/PurchaseVipResult;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PurchaseVipResult;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final t(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdTocRoot;
    .locals 3
    .prologue
    v0 = "http://m.leidian.com/ebook/detail/index.php?c=ebook&a=chapterlist&bid=%s&total=100000";
    v1 = 0x1;
    new-array v1, v1, [Ljava/lang/Object;
    v2 = 0x0;
    v1[v2] = p1;
    v0 = Ljava/lang/String.format(v0, v1);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v1 = 0x8;
    v0 = p0.a(v0, v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdTocRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdTocRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final u()Lcom/ushaqi/zhuishushenqi/model/BookTopRoot;
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/favorite/book/top";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/BookTopRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookTopRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final u(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChangeNickNameRoot;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/change-nickname";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "nickname";
    v1.put(v2, p2);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ChangeNickNameRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChangeNickNameRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = v0.getCause();
    throw v0
.end method
.method public final u(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .prologue
    v0 = "http://m.leidian.com/index.php?c=ebook&a=chapterData&bid=%s&idx=0";
    v1 = 0x1;
    new-array v1, v1, [Ljava/lang/Object;
    v2 = 0x0;
    v1[v2] = p1;
    v0 = Ljava/lang/String.format(v0, v1);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v1 = 0x8;
    v0 = p0.a(v0, v1);
    v0.d();
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final v(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChangeGenderRoot;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/change-gender";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "gender";
    v1.put(v2, p2);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ChangeGenderRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChangeGenderRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = v0.getCause();
    throw v0
.end method
.method public final v(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocRoot;
    .locals 6
    .prologue
    v5 = 0x1;
    v4 = 0x0;
    v0 = Lcom/arcsoft/hpay100/a/a.O(p1);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = 0x0;
    :goto_0
    return v0;
    :cond_0
    v1 = "http://api.easou.com/api/bookapp/chapter_list.m?gid=%s&nid=%s&size=100000&cid=eef_";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = v0[v4];
    v2[v4] = v3;
    v0 = v0[v5];
    v2[v5] = v0;
    v0 = Ljava/lang/String.format(v1, v2);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v1 = 0x3;
    v0 = p0.a(v0, v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    goto :goto_0
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final w(Ljava/lang/String;)I
    .locals 3
    .prologue
    v0 = "http://bookshelf.html5.qq.com/ajax?m=show_bookcatalog&resourceid=%s";
    v1 = 0x1;
    new-array v1, v1, [Ljava/lang/Object;
    v2 = 0x0;
    v1[v2] = p1;
    v0 = Ljava/lang/String.format(v0, v1);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v1 = 0x6;
    v0 = p0.a(v0, v1);
    v0 = v0.d();
    Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsChapterJson.getTocCount(v0);
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    move-result v0
    return v0
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final w(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/post/%s/report";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "reason";
    v1.put(v2, p2);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ResultStatus;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = v0.getCause();
    throw v0
.end method
.method public final x(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    .locals 4
    .prologue
    v0 = Landroid/support/design/widget/am.e(p1);
    v1 = "/chapter/%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = v0;
    v0 = Ljava/lang/String.format(v1, v2);
    v1 = new StringBuilder();
    v1.<init>();
    v2 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->h;
    v1 = v1.append(v2);
    v1 = v1.append(v0);
    v1 = v1.toString();
    v2 = new StringBuilder();
    v2.<init>();
    v1 = v2.append(v1);
    v2 = "?";
    v1 = v1.append(v2);
    v0 = Lcom/arcsoft/hpay100/a/a.A(v0);
    v0 = v1.append(v0);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/e;->a()Z
    move-result v1
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    Lcom/ushaqi/zhuishushenqi/api/e.a(v0);
    :cond_0
    v0 = p0.b(v0);
    v1 = v0.c();
    v2 = v0.b();
    if (v1 != 0) {
//       if-nez v1, :cond_2
    }
    v1 = 0x1f4;
    if (v2 < v1) {
//       if-lt v2, v1, :cond_2
    }
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->w()Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    :cond_1
    :goto_0
    return v0;
    :cond_2
    v1 = Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v1 = v0.getChapter();
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    v1 = v0.getChapter();
    v1.setLink(p1);
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    goto :goto_0
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final x(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/add-exp";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "type";
    v1.put(v2, p2);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ResultStatus;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = v0.getCause();
    throw v0
.end method
.method public final y(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    .locals 5
    .prologue
    v0 = Landroid/support/design/widget/am.e(p1);
    v1 = new StringBuilder();
    v1.<init>();
    v2 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->g;
    v1 = v1.append(v2);
    v2 = "/chapter/%s";
    v3 = 0x1;
    new-array v3, v3, [Ljava/lang/Object;
    v4 = 0x0;
    v3[v4] = v0;
    v0 = Ljava/lang/String.format(v2, v3);
    v0 = v1.append(v0);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/e;->a()Z
    move-result v1
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    Lcom/ushaqi/zhuishushenqi/api/e.a(v0);
    :cond_0
    v0 = p0.b(v0);
    v1 = v0.c();
    v2 = v0.b();
    if (v1 != 0) {
//       if-nez v1, :cond_2
    }
    v1 = 0x1f4;
    if (v2 < v1) {
//       if-lt v2, v1, :cond_2
    }
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->w()Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    :cond_1
    :goto_0
    return v0;
    :cond_2
    v1 = Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v1 = v0.getChapter();
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    v1 = v0.getChapter();
    v1.setLink(p1);
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    goto :goto_0
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final y(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/collected-post";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "post";
    v1.put(v2, p2);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ResultStatus;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = v0.getCause();
    throw v0
.end method
.method public final z(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookRankDetailRoot;
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/ranking/%s";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = 0x0;
    v2[v3] = p1;
    v1 = Ljava/lang/String.format(v1, v2);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.a(v0);
    v0 = p0.a(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/model/BookRankDetailRoot;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookRankDetailRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0 = v0.getCause();
    throw v0
.end method
.method public final z(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->f;
    v0 = v0.append(v1);
    v1 = "/user/collected-post/remove";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = new HashMap();
    v1.<init>();
    v2 = "token";
    v1.put(v2, p1);
    v2 = "post";
    v1.put(v2, p2);
    :try_start_0
    v0 = Lcom/github/kevinsawicki/http/HttpRequest.b(v0);
    v0 = p0.b(v0);
    v0.a(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/model/ResultStatus;;
    v0 = Lcom/ushaqi/zhuishushenqi/api/ApiService.a(v0, v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = v0.getCause();
    throw v0
.end method
