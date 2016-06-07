.class public final Lcom/github/kevinsawicki/http/HttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/github/kevinsawicki/http/c;


# instance fields
.field private b:Ljava/net/HttpURLConnection;

.field private c:Ljava/net/URL;

.field private final d:Ljava/lang/String;

.field private e:Lcom/github/kevinsawicki/http/f;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 369
    sget-object v0, Lcom/github/kevinsawicki/http/c;->a:Lcom/github/kevinsawicki/http/c;

    sput-object v0, Lcom/github/kevinsawicki/http/HttpRequest;->a:Lcom/github/kevinsawicki/http/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->b:Ljava/net/HttpURLConnection;

    .line 1330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->h:Z

    .line 1332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->i:Z

    .line 1334
    const/16 v0, 0x2000

    iput v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->j:I

    .line 1350
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->c:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1354
    iput-object p2, p0, Lcom/github/kevinsawicki/http/HttpRequest;->d:Ljava/lang/String;

    .line 1355
    return-void

    .line 1351
    :catch_0
    move-exception v0

    .line 1352
    new-instance v1, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method static synthetic a(Lcom/github/kevinsawicki/http/HttpRequest;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->j:I

    return v0
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 6

    .prologue
    .line 2476
    new-instance v0, Lcom/github/kevinsawicki/http/a;

    iget-boolean v3, p0, Lcom/github/kevinsawicki/http/HttpRequest;->h:Z

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/github/kevinsawicki/http/a;-><init>(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/a;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/kevinsawicki/http/HttpRequest;

    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 2

    .prologue
    .line 906
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest;

    const-string v1, "GET"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lcom/github/kevinsawicki/http/HttpRequest;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x3f

    const/16 v6, 0x3d

    const/16 v4, 0x2f

    const/16 v5, 0x26

    .line 932
    .line 3822
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3823
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 933
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    return-object v0

    .line 3826
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4317
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 4318
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4325
    :cond_2
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 4326
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 4327
    const/4 v4, -0x1

    if-ne v2, v4, :cond_5

    .line 4328
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3833
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3834
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3835
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3836
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3837
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 3838
    if-eqz v0, :cond_4

    .line 3839
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3841
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3842
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3843
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3844
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3845
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3846
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 3847
    if-eqz v0, :cond_4

    .line 3848
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4329
    :cond_5
    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_3

    .line 4330
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3851
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2972
    iget-boolean v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->g:Z

    if-nez v0, :cond_3

    move v0, v1

    .line 2973
    :goto_0
    if-eqz v0, :cond_0

    .line 2974
    const-string v2, "application/x-www-form-urlencoded"

    invoke-direct {p0, v2, p3}, Lcom/github/kevinsawicki/http/HttpRequest;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2975
    iput-boolean v1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->g:Z

    .line 2977
    :cond_0
    invoke-static {p3}, Lcom/github/kevinsawicki/http/HttpRequest;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2979
    :try_start_0
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->m()Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2980
    if-nez v0, :cond_1

    .line 2981
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->e:Lcom/github/kevinsawicki/http/f;

    const/16 v2, 0x26

    invoke-virtual {v0, v2}, Lcom/github/kevinsawicki/http/f;->write(I)V

    .line 2982
    :cond_1
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->e:Lcom/github/kevinsawicki/http/f;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/kevinsawicki/http/f;->a(Ljava/lang/String;)Lcom/github/kevinsawicki/http/f;

    .line 2983
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->e:Lcom/github/kevinsawicki/http/f;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Lcom/github/kevinsawicki/http/f;->write(I)V

    .line 2984
    if-eqz p2, :cond_2

    .line 2985
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->e:Lcom/github/kevinsawicki/http/f;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/f;->a(Ljava/lang/String;)Lcom/github/kevinsawicki/http/f;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2989
    :cond_2
    return-object p0

    .line 2972
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 2986
    :catch_0
    move-exception v0

    .line 2987
    new-instance v1, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 2

    .prologue
    .line 2608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2609
    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2610
    if-eqz p2, :cond_0

    .line 2611
    const-string v1, "\"; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2612
    :cond_0
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2613
    const-string v1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2614
    if-eqz p3, :cond_1

    .line 2615
    const-string v0, "Content-Type"

    invoke-direct {p0, v0, p3}, Lcom/github/kevinsawicki/http/HttpRequest;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2616
    :cond_1
    const-string v0, "\r\n"

    invoke-direct {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->e(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 2

    .prologue
    .line 2768
    :try_start_0
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->n()Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2769
    invoke-direct {p0, p1, p2, p3}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2770
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->e:Lcom/github/kevinsawicki/http/f;

    invoke-direct {p0, p4, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/github/kevinsawicki/http/HttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2774
    return-object p0

    .line 2771
    :catch_0
    move-exception v0

    .line 2772
    new-instance v1, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public static b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 2

    .prologue
    .line 962
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v7, 0x22

    const/4 v2, 0x0

    const/16 v6, 0x3b

    const/4 v5, -0x1

    .line 2141
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v2

    .line 2173
    :cond_1
    :goto_0
    return-object v0

    .line 2144
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2145
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 2146
    if-eqz v3, :cond_3

    if-ne v3, v1, :cond_4

    :cond_3
    move-object v0, v2

    .line 2147
    goto :goto_0

    .line 2149
    :cond_4
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2150
    if-ne v0, v5, :cond_8

    move v0, v3

    move v3, v1

    .line 2153
    :goto_1
    if-ge v0, v3, :cond_7

    .line 2154
    const/16 v4, 0x3d

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 2155
    if-eq v4, v5, :cond_5

    if-ge v4, v3, :cond_5

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2157
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2158
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 2159
    if-eqz v4, :cond_5

    .line 2160
    const/4 v1, 0x2

    if-le v4, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v7, v1, :cond_1

    add-int/lit8 v1, v4, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v7, v1, :cond_1

    .line 2162
    const/4 v1, 0x1

    add-int/lit8 v2, v4, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2167
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 2168
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2169
    if-ne v0, v5, :cond_6

    move v0, v1

    :cond_6
    move v8, v0

    move v0, v3

    move v3, v8

    .line 2171
    goto :goto_1

    :cond_7
    move-object v0, v2

    .line 2173
    goto :goto_0

    :cond_8
    move v8, v0

    move v0, v3

    move v3, v8

    goto :goto_1
.end method

.method public static c(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 2

    .prologue
    .line 1018
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest;

    const-string v1, "PUT"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 3

    .prologue
    .line 2401
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2403
    const-string v0, "Content-Type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; charset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2405
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-static {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 2

    .prologue
    .line 1074
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest;

    const-string v1, "DELETE"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 2

    .prologue
    .line 2787
    invoke-direct {p0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->e(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    const-string v1, ": "

    invoke-direct {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->e(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {v0, p2}, Lcom/github/kevinsawicki/http/HttpRequest;->e(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-direct {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->e(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 264
    :goto_0
    return-object p0

    :cond_0
    const-string p0, "UTF-8"

    goto :goto_0
.end method

.method private e(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 2

    .prologue
    .line 2875
    :try_start_0
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->m()Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2876
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->e:Lcom/github/kevinsawicki/http/f;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/f;->a(Ljava/lang/String;)Lcom/github/kevinsawicki/http/f;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2880
    return-object p0

    .line 2877
    :catch_0
    move-exception v0

    .line 2878
    new-instance v1, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1629
    .line 6611
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->f()I

    move-result v1

    .line 6612
    if-lez v1, :cond_0

    .line 6613
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 6711
    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->i()Ljava/io/InputStream;

    move-result-object v2

    iget v3, p0, Lcom/github/kevinsawicki/http/HttpRequest;->j:I

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1631
    invoke-direct {p0, v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 1632
    invoke-static {p1}, Lcom/github/kevinsawicki/http/HttpRequest;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 6615
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_0

    .line 1633
    :catch_0
    move-exception v0

    .line 1634
    new-instance v1, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private f(Ljava/lang/String;)Ljava/io/InputStreamReader;
    .locals 3

    .prologue
    .line 1761
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->i()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {p1}, Lcom/github/kevinsawicki/http/HttpRequest;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1762
    :catch_0
    move-exception v0

    .line 1763
    new-instance v1, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1976
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->l()Lcom/github/kevinsawicki/http/HttpRequest;

    .line 1977
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->h()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/net/HttpURLConnection;
    .locals 2

    .prologue
    .line 1380
    :try_start_0
    sget-object v0, Lcom/github/kevinsawicki/http/HttpRequest;->a:Lcom/github/kevinsawicki/http/c;

    iget-object v1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->c:Ljava/net/URL;

    invoke-interface {v0, v1}, Lcom/github/kevinsawicki/http/c;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 1381
    iget-object v1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1382
    return-object v0

    .line 1383
    :catch_0
    move-exception v0

    .line 1384
    new-instance v1, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private h()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->b:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 1400
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->g()Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->b:Ljava/net/HttpURLConnection;

    .line 1401
    :cond_0
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->b:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method private i()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 1722
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->b()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_1

    .line 1724
    :try_start_0
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->h()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1739
    :cond_0
    :goto_0
    return-object v0

    .line 1725
    :catch_0
    move-exception v0

    .line 1726
    new-instance v1, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 1729
    :cond_1
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->h()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1730
    if-nez v0, :cond_0

    .line 1732
    :try_start_1
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->h()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 1733
    :catch_1
    move-exception v0

    .line 1734
    new-instance v1, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2182
    const-string v0, "Content-Type"

    const-string v1, "charset"

    .line 7072
    invoke-direct {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2182
    return-object v0
.end method

.method private k()Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 2

    .prologue
    .line 2520
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->e:Lcom/github/kevinsawicki/http/f;

    if-nez v0, :cond_0

    .line 2533
    :goto_0
    return-object p0

    .line 2522
    :cond_0
    iget-boolean v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->f:Z

    if-eqz v0, :cond_1

    .line 2523
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->e:Lcom/github/kevinsawicki/http/f;

    const-string v1, "\r\n--00content0boundary00--\r\n"

    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/f;->a(Ljava/lang/String;)Lcom/github/kevinsawicki/http/f;

    .line 2524
    :cond_1
    iget-boolean v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->h:Z

    if-eqz v0, :cond_2

    .line 2526
    :try_start_0
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->e:Lcom/github/kevinsawicki/http/f;

    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/f;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2532
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->e:Lcom/github/kevinsawicki/http/f;

    goto :goto_0

    .line 2531
    :cond_2
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->e:Lcom/github/kevinsawicki/http/f;

    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/f;->close()V

    goto :goto_1

    .line 2529
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private l()Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 2

    .prologue
    .line 2545
    :try_start_0
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->k()Lcom/github/kevinsawicki/http/HttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 2546
    :catch_0
    move-exception v0

    .line 2547
    new-instance v1, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private m()Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 4

    .prologue
    .line 2558
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->e:Lcom/github/kevinsawicki/http/f;

    if-eqz v0, :cond_0

    .line 2565
    :goto_0
    return-object p0

    .line 2560
    :cond_0
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->h()Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 2561
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->h()Ljava/net/HttpURLConnection;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "charset"

    invoke-static {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2563
    new-instance v1, Lcom/github/kevinsawicki/http/f;

    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->h()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget v3, p0, Lcom/github/kevinsawicki/http/HttpRequest;->j:I

    invoke-direct {v1, v2, v0, v3}, Lcom/github/kevinsawicki/http/f;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->e:Lcom/github/kevinsawicki/http/f;

    goto :goto_0
.end method

.method private n()Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 2

    .prologue
    .line 2575
    iget-boolean v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->f:Z

    if-nez v0, :cond_0

    .line 2576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->f:Z

    .line 2577
    const-string v0, "multipart/form-data; boundary=00content0boundary00"

    .line 8390
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2577
    invoke-direct {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->m()Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2578
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->e:Lcom/github/kevinsawicki/http/f;

    const-string v1, "--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/f;->a(Ljava/lang/String;)Lcom/github/kevinsawicki/http/f;

    .line 2581
    :goto_0
    return-object p0

    .line 2580
    :cond_0
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->e:Lcom/github/kevinsawicki/http/f;

    const-string v1, "\r\n--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/f;->a(Ljava/lang/String;)Lcom/github/kevinsawicki/http/f;

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 2

    .prologue
    .line 1906
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->h()Ljava/net/HttpURLConnection;

    move-result-object v0

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1907
    return-object p0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 1

    .prologue
    .line 2955
    const-string v0, "UTF-8"

    invoke-direct {p0, p1, p2, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 1

    .prologue
    .line 2192
    const-string v0, "User-Agent"

    invoke-virtual {p0, v0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 1

    .prologue
    .line 1929
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->h()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 2

    .prologue
    .line 2734
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2738
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    return-object v0

    .line 2735
    :catch_0
    move-exception v0

    .line 2736
    new-instance v1, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 2

    .prologue
    .line 2657
    :try_start_0
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->n()Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2658
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2659
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->e:Lcom/github/kevinsawicki/http/f;

    invoke-virtual {v0, p4}, Lcom/github/kevinsawicki/http/f;->a(Ljava/lang/String;)Lcom/github/kevinsawicki/http/f;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2663
    return-object p0

    .line 2660
    :catch_0
    move-exception v0

    .line 2661
    new-instance v1, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public final a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Lcom/github/kevinsawicki/http/HttpRequest;"
        }
    .end annotation

    .prologue
    .line 2909
    const-string v1, "UTF-8"

    .line 9002
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9003
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 9939
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v3, v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    goto :goto_0

    .line 2909
    :cond_0
    return-object p0
.end method

.method public final a()Ljava/net/URL;
    .locals 1

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/github/kevinsawicki/http/HttpRequest;->c:Ljava/net/URL;

    return-object v0
.end method

.method public final a(Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/github/kevinsawicki/http/HttpRequest;->c:Ljava/net/URL;

    .line 1314
    return-void
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 1436
    :try_start_0
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->k()Lcom/github/kevinsawicki/http/HttpRequest;

    .line 1437
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->h()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1438
    :catch_0
    move-exception v0

    .line 1439
    new-instance v1, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public final b(I)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 2

    .prologue
    .line 1917
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->h()Ljava/net/HttpURLConnection;

    move-result-object v0

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1918
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 1

    .prologue
    .line 2202
    const-string v0, "Referer"

    invoke-virtual {p0, v0, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 1464
    const/16 v0, 0xc8

    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->b()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1646
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/io/BufferedReader;
    .locals 3

    .prologue
    .line 1801
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->j()Ljava/lang/String;

    move-result-object v0

    .line 6789
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->f(Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object v0

    iget v2, p0, Lcom/github/kevinsawicki/http/HttpRequest;->j:I

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 1801
    return-object v1
.end method

.method public final f()I
    .locals 3

    .prologue
    .line 2423
    const-string v0, "Content-Length"

    .line 8042
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->l()Lcom/github/kevinsawicki/http/HttpRequest;

    .line 8043
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->h()Ljava/net/HttpURLConnection;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    .line 2423
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5056
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->h()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    .line 1390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6047
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->h()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    .line 1390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
