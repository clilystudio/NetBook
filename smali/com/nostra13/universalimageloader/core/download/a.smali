.class public final Lcom/nostra13/universalimageloader/core/download/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/download/ImageDownloader;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/download/a;->a:Landroid/content/Context;

    .line 69
    const/16 v0, 0x1388

    iput v0, p0, Lcom/nostra13/universalimageloader/core/download/a;->b:I

    .line 70
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/nostra13/universalimageloader/core/download/a;->c:I

    .line 71
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2

    .prologue
    .line 140
    const-string v0, "@#&=*+-_.,:!?()/~\'%"

    invoke-static {p1, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 142
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 143
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 144
    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const v4, 0x8000

    .line 110
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/download/a;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 113
    :goto_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 114
    const-string v2, "Location"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/download/a;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 126
    new-instance v2, Lcom/nostra13/universalimageloader/core/assist/a;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/nostra13/universalimageloader/core/assist/a;-><init>(Ljava/io/InputStream;I)V

    return-object v2

    .line 121
    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 2099
    new-array v2, v4, [B

    .line 2101
    :cond_1
    const/4 v3, 0x0

    const v4, 0x8000

    :try_start_1
    invoke-virtual {v1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 2106
    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->c(Ljava/io/Closeable;)V

    .line 124
    :goto_1
    throw v0

    .line 2106
    :catch_1
    move-exception v2

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->c(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->c(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 6

    .prologue
    .line 81
    sget-object v0, Lcom/nostra13/universalimageloader/core/download/b;->a:[I

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1223
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "UIL doesn\'t support scheme(protocol) by default [%s]. You should implement this support yourself (BaseImageDownloader.getStreamFromOtherSource(...))"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/download/a;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    .line 1175
    :goto_0
    return-object v0

    .line 1157
    :pswitch_1
    sget-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->crop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1158
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/a;

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const v4, 0x8000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-direct {v0, v2, v1}, Lcom/nostra13/universalimageloader/core/assist/a;-><init>(Ljava/io/InputStream;I)V

    goto :goto_0

    .line 1172
    :pswitch_2
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/download/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1173
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1174
    const-string v2, "content://com.android.contacts/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1175
    invoke-static {v0, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 1177
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 1191
    :pswitch_3
    sget-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ASSETS:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->crop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1192
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/download/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 1204
    :pswitch_4
    sget-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->DRAWABLE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->crop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1205
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1206
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/download/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
