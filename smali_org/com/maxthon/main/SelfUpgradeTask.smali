.class public Lcom/maxthon/main/SelfUpgradeTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final AES_KEY:Ljava/lang/String; = "fbe5ac145999f320b3cf17fc471a3484"

.field public static final DEFAULT_JVERSION:Ljava/lang/String; = "1.0.0"

.field private static KEY_DATA:Ljava/lang/String; = null

.field private static KEY_DOWNLOAD_URL:Ljava/lang/String; = null

.field private static KEY_MD5:Ljava/lang/String; = null

.field private static KEY_SHA:Ljava/lang/String; = null

.field private static KEY_SIZE:Ljava/lang/String; = null

.field private static S_VERSION:Ljava/lang/String; = null

.field private static final URL:Ljava/lang/String; = "http://wge.maxthon.cn/web_game_engine/self_update.php?sv=%s&jv=%s&dp=%s"


# instance fields
.field private mCallback:Lcom/maxthon/main/UICallback;

.field private mJverion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "1.0.0"

    sput-object v0, Lcom/maxthon/main/SelfUpgradeTask;->S_VERSION:Ljava/lang/String;

    .line 44
    const-string v0, "data"

    sput-object v0, Lcom/maxthon/main/SelfUpgradeTask;->KEY_DATA:Ljava/lang/String;

    .line 45
    const-string v0, "md5"

    sput-object v0, Lcom/maxthon/main/SelfUpgradeTask;->KEY_MD5:Ljava/lang/String;

    .line 46
    const-string v0, "sha"

    sput-object v0, Lcom/maxthon/main/SelfUpgradeTask;->KEY_SHA:Ljava/lang/String;

    .line 47
    const-string v0, "download_url"

    sput-object v0, Lcom/maxthon/main/SelfUpgradeTask;->KEY_DOWNLOAD_URL:Ljava/lang/String;

    .line 48
    const-string v0, "size"

    sput-object v0, Lcom/maxthon/main/SelfUpgradeTask;->KEY_SIZE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/maxthon/main/UICallback;)V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/maxthon/main/SelfUpgradeTask;->mCallback:Lcom/maxthon/main/UICallback;

    .line 54
    iget-object v0, p0, Lcom/maxthon/main/SelfUpgradeTask;->mCallback:Lcom/maxthon/main/UICallback;

    invoke-interface {v0}, Lcom/maxthon/main/UICallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/maxthon/main/MgeProperties;->getMgeSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 55
    sget-object v1, Lcom/maxthon/main/MgeProperties;->KEY_SDK_JVERSION:Ljava/lang/String;

    const-string v2, "1.0.0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maxthon/main/SelfUpgradeTask;->mJverion:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/maxthon/dex/DexUtils;->getInstance()Lcom/maxthon/dex/DexUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/maxthon/main/SelfUpgradeTask;->mCallback:Lcom/maxthon/main/UICallback;

    invoke-interface {v1}, Lcom/maxthon/main/UICallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maxthon/dex/DexUtils;->init(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method private entityToString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 224
    if-nez p1, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 228
    if-nez v2, :cond_1

    .line 229
    const-string v0, ""

    .line 256
    :goto_0
    return-object v0

    .line 231
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity too large to be buffered in memory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    long-to-int v0, v0

    .line 235
    if-gez v0, :cond_3

    .line 236
    const/16 v0, 0x1000

    .line 238
    :cond_3
    invoke-direct {p0, p1}, Lcom/maxthon/main/SelfUpgradeTask;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 239
    if-nez v1, :cond_4

    move-object v1, p2

    .line 242
    :cond_4
    if-nez v1, :cond_5

    .line 243
    const-string v1, "ISO-8859-1"

    .line 245
    :cond_5
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 246
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 248
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [C

    .line 250
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/Reader;->read([C)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_6

    .line 254
    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    .line 256
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_6
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v0, v4, v2}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 253
    :catchall_0
    move-exception v0

    .line 254
    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    .line 255
    throw v0
.end method

.method private getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 261
    if-nez p1, :cond_0

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    const/4 v0, 0x0

    .line 265
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 266
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v1

    .line 267
    array-length v2, v1

    if-lez v2, :cond_1

    .line 268
    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "charset"

    invoke-interface {v1, v2}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v1

    .line 269
    if-eqz v1, :cond_1

    .line 270
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 274
    :cond_1
    return-object v0
.end method

.method private getUpgradeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 215
    const-string v0, "http://wge.maxthon.cn/web_game_engine/self_update.php?sv=%s&jv=%s&dp=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    const-string v3, "y"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUpgradeUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    const-string v0, "http://wge.maxthon.cn/web_game_engine/self_update.php?sv=%s&jv=%s&dp=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private retry()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/maxthon/main/SelfUpgradeTask;->mCallback:Lcom/maxthon/main/UICallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/maxthon/main/UICallback;->onFailure(I)V

    .line 202
    return-void
.end method

.method private saveJversion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 205
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-static {p1}, Lcom/maxthon/main/MgeProperties;->getMgeSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 207
    sget-object v1, Lcom/maxthon/main/MgeProperties;->KEY_SDK_JVERSION:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 209
    iput-object p2, p0, Lcom/maxthon/main/SelfUpgradeTask;->mJverion:Ljava/lang/String;

    .line 210
    invoke-static {}, Lcom/maxthon/dex/DexUtils;->getInstance()Lcom/maxthon/dex/DexUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/maxthon/dex/DexUtils;->setJversion(Ljava/lang/String;)V

    .line 212
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 18

    .prologue
    .line 66
    const-string v2, "test_upgrade"

    const-string v3, "doInBackground"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v3, 0x0

    .line 69
    :try_start_0
    const-string v2, "wge"

    invoke-static {v2}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    .line 70
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/maxthon/main/SelfUpgradeTask;->mCallback:Lcom/maxthon/main/UICallback;

    invoke-interface {v2}, Lcom/maxthon/main/UICallback;->isRequestDependence()Z

    move-result v2

    .line 71
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    sget-object v5, Lcom/maxthon/main/SelfUpgradeTask;->S_VERSION:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/maxthon/main/SelfUpgradeTask;->mJverion:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, "y"

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v2}, Lcom/maxthon/main/SelfUpgradeTask;->getUpgradeUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/16 v5, 0x7530

    invoke-static {v2, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 75
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const v5, 0xc350

    invoke-static {v2, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 76
    invoke-virtual {v3, v4}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 77
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 78
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 79
    const-string v5, "test_upgrade"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "statusCode = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/16 v5, 0xc8

    if-lt v2, v5, :cond_0

    const/16 v5, 0x12c

    if-lt v2, v5, :cond_3

    .line 81
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 177
    if-eqz v3, :cond_1

    .line 178
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 181
    :cond_1
    :goto_1
    return-object v2

    .line 71
    :cond_2
    :try_start_1
    const-string v2, "n"

    goto :goto_0

    .line 83
    :cond_3
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/maxthon/main/SelfUpgradeTask;->publishProgress([Ljava/lang/Object;)V

    .line 84
    const-string v2, "UTF-8"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/maxthon/main/SelfUpgradeTask;->entityToString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    const-string v4, "test_upgrade"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "json : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    sget-object v2, Lcom/maxthon/main/SelfUpgradeTask;->KEY_DATA:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 88
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 89
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/maxthon/main/SelfUpgradeTask;->publishProgress([Ljava/lang/Object;)V

    .line 90
    check-cast v2, Ljava/lang/String;

    .line 91
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 92
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/maxthon/main/SelfUpgradeTask;->publishProgress([Ljava/lang/Object;)V

    .line 93
    invoke-static {v2}, Lcom/maxthon/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 94
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 95
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 96
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/maxthon/main/SelfUpgradeTask;->publishProgress([Ljava/lang/Object;)V

    .line 97
    const-string v2, "fbe5ac145999f320b3cf17fc471a3484"

    invoke-static {v2, v4}, Lcom/maxthon/utils/AES;->AES_Decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    const-string v4, "test_upgrade"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "url : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 100
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/16 v6, 0x9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/maxthon/main/SelfUpgradeTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    sget-object v2, Lcom/maxthon/main/SelfUpgradeTask;->KEY_DOWNLOAD_URL:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 104
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 105
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/maxthon/main/SelfUpgradeTask;->publishProgress([Ljava/lang/Object;)V

    .line 106
    const-class v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 107
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 108
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/16 v7, 0xb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/maxthon/main/SelfUpgradeTask;->publishProgress([Ljava/lang/Object;)V

    .line 109
    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    const-string v4, "test_upgrade"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "utf8Url : "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 112
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 113
    const-string v4, "test_upgrade"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "jv = "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 117
    sget-object v4, Lcom/maxthon/main/SelfUpgradeTask;->KEY_SIZE:Ljava/lang/String;

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 118
    const-wide/16 v4, 0x0

    .line 120
    const/16 v10, 0x400

    new-array v10, v10, [B

    .line 122
    invoke-static {}, Lcom/maxthon/dex/DexUtils;->getInstance()Lcom/maxthon/dex/DexUtils;

    move-result-object v11

    const-string v12, "plugin_main"

    invoke-virtual {v11, v12, v7}, Lcom/maxthon/dex/DexUtils;->getJarFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 123
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 124
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 126
    :cond_4
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 127
    :goto_2
    invoke-virtual {v2, v10}, Ljava/io/InputStream;->read([B)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_6

    .line 132
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 133
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 135
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v4, 0x0

    const/16 v5, 0x5b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/maxthon/main/SelfUpgradeTask;->publishProgress([Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 138
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 139
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v8, 0x0

    const/16 v9, 0x5c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/maxthon/main/SelfUpgradeTask;->publishProgress([Ljava/lang/Object;)V

    .line 140
    sget-object v2, Lcom/maxthon/main/SelfUpgradeTask;->KEY_SIZE:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v2, v4, v8

    if-nez v2, :cond_7

    .line 141
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/maxthon/utils/MDUtils;->md5File(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/16 v8, 0x5d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/maxthon/main/SelfUpgradeTask;->publishProgress([Ljava/lang/Object;)V

    .line 144
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v4, Lcom/maxthon/main/SelfUpgradeTask;->KEY_MD5:Ljava/lang/String;

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 145
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/maxthon/utils/MDUtils;->shaFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/16 v8, 0x5e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/maxthon/main/SelfUpgradeTask;->publishProgress([Ljava/lang/Object;)V

    .line 147
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v4, Lcom/maxthon/main/SelfUpgradeTask;->KEY_SHA:Ljava/lang/String;

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 148
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v4, 0x0

    const/16 v5, 0x5f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/maxthon/main/SelfUpgradeTask;->publishProgress([Ljava/lang/Object;)V

    .line 149
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v4, 0x0

    const/16 v5, 0x60

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/maxthon/main/SelfUpgradeTask;->publishProgress([Ljava/lang/Object;)V

    .line 151
    invoke-static {}, Lcom/maxthon/dex/DexUtils;->getInstance()Lcom/maxthon/dex/DexUtils;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/maxthon/dex/DexUtils;->unZipJar(Ljava/io/File;)V

    .line 152
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v4, 0x0

    const/16 v5, 0x63

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/maxthon/main/SelfUpgradeTask;->publishProgress([Ljava/lang/Object;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/maxthon/main/SelfUpgradeTask;->mCallback:Lcom/maxthon/main/UICallback;

    invoke-interface {v2}, Lcom/maxthon/main/UICallback;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/maxthon/main/SelfUpgradeTask;->mCallback:Lcom/maxthon/main/UICallback;

    invoke-interface {v2}, Lcom/maxthon/main/UICallback;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lcom/maxthon/main/SelfUpgradeTask;->saveJversion(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/maxthon/main/SelfUpgradeTask;->publishProgress([Ljava/lang/Object;)V

    .line 157
    :cond_5
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 177
    if-eqz v3, :cond_1

    .line 178
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_1

    .line 128
    :cond_6
    const/4 v14, 0x0

    :try_start_3
    invoke-virtual {v12, v10, v14, v13}, Ljava/io/OutputStream;->write([BII)V

    .line 129
    int-to-long v14, v13

    add-long/2addr v4, v14

    .line 130
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Integer;

    const/4 v14, 0x0

    const-wide/16 v16, 0x50

    mul-long v16, v16, v4

    div-long v16, v16, v8

    move-wide/from16 v0, v16

    long-to-int v15, v0

    add-int/lit8 v15, v15, 0xa

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/maxthon/main/SelfUpgradeTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 164
    :catch_0
    move-exception v2

    .line 165
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 177
    :cond_7
    if-eqz v3, :cond_8

    .line 178
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 181
    :cond_8
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_1

    .line 172
    :catch_1
    move-exception v2

    .line 173
    :try_start_5
    const-string v4, "test_upgrade"

    const-string v5, "exception \uff1a"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v2

    .line 177
    if-eqz v3, :cond_1

    .line 178
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_1

    .line 176
    :catchall_0
    move-exception v2

    .line 177
    if-eqz v3, :cond_9

    .line 178
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 180
    :cond_9
    throw v2
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/maxthon/main/SelfUpgradeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 192
    const-string v0, "test_upgrade"

    const-string v1, "onPostExecute : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/maxthon/main/SelfUpgradeTask;->retry()V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/maxthon/main/SelfUpgradeTask;->mCallback:Lcom/maxthon/main/UICallback;

    invoke-interface {v0}, Lcom/maxthon/main/UICallback;->onSuccess()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/maxthon/main/SelfUpgradeTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "test_upgrade"

    const-string v1, "onPreExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 186
    const-string v0, "test_upgrade"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProgressUpdate : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/maxthon/main/SelfUpgradeTask;->mCallback:Lcom/maxthon/main/UICallback;

    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/maxthon/main/UICallback;->onProgressUpdate(I)V

    .line 188
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/maxthon/main/SelfUpgradeTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
