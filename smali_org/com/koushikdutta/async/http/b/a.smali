.class public Lcom/koushikdutta/async/http/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/koushikdutta/async/http/b/e;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/b/e;)V
    .locals 5

    .prologue
    .line 2065
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2067
    iput-object p2, p0, Lcom/koushikdutta/async/http/b/a;->a:Lcom/koushikdutta/async/http/b/e;

    .line 2069
    new-instance v1, Lcom/koushikdutta/async/http/b/g;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/b/g;-><init>(Lcom/koushikdutta/async/http/b/a;)V

    .line 2085
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/b/e;->d()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 2086
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/b/e;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 2087
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/b/e;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 2088
    const-string v4, "Cache-Control"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2089
    invoke-static {v3, v1}, Lcom/koushikdutta/async/http/b/a;->a(Ljava/lang/String;Lcom/koushikdutta/async/http/b/b;)V

    .line 2085
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2090
    :cond_1
    const-string v4, "Pragma"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2091
    const-string v2, "no-cache"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 2094
    :cond_2
    const-string v4, "If-None-Match"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2096
    const-string v4, "If-Modified-Since"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2098
    const-string v4, "Authorization"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2100
    const-string v4, "Content-Length"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2102
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2104
    :catch_0
    move-exception v2

    goto :goto_1

    .line 2105
    :cond_3
    const-string v3, "Transfer-Encoding"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2107
    const-string v3, "User-Agent"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2109
    const-string v3, "Host"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2111
    const-string v3, "Connection"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2113
    const-string v3, "Accept-Encoding"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2115
    const-string v3, "Content-Type"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2117
    const-string v3, "Proxy-Authorization"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    goto :goto_1

    .line 2121
    :cond_4
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 99
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 100
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 101
    const v0, 0x7fffffff

    .line 108
    :goto_0
    return v0

    .line 102
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 103
    const/4 v0, 0x0

    goto :goto_0

    .line 105
    :cond_1
    long-to-int v0, v0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2

    .prologue
    .line 71
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 71
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return p1
.end method

.method public static a(Ljava/lang/String;Lcom/koushikdutta/async/http/b/b;)V
    .locals 5

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 32
    const-string v1, "=,"

    invoke-static {p0, v0, v1}, Lcom/koushikdutta/async/http/b/a;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 33
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2c

    if-ne v0, v3, :cond_1

    .line 36
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 37
    const/4 v1, 0x0

    invoke-interface {p1, v2, v1}, Lcom/koushikdutta/async/http/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_1
    add-int/lit8 v0, v1, 0x1

    .line 1084
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1085
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1086
    const/16 v3, 0x20

    if-eq v1, v3, :cond_2

    const/16 v3, 0x9

    if-ne v1, v3, :cond_3

    .line 1084
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 47
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x22

    if-ne v1, v3, :cond_4

    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 50
    const-string v1, "\""

    invoke-static {p0, v0, v1}, Lcom/koushikdutta/async/http/b/a;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 51
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 52
    add-int/lit8 v1, v1, 0x1

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 61
    :goto_2
    invoke-interface {p1, v2, v1}, Lcom/koushikdutta/async/http/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_4
    const-string v1, ","

    invoke-static {p0, v0, v1}, Lcom/koushikdutta/async/http/b/a;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 58
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    goto :goto_2

    .line 63
    :cond_5
    return-void
.end method


# virtual methods
.method public a()Lcom/koushikdutta/async/http/b/e;
    .locals 1

    .prologue
    .line 2136
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/a;->a:Lcom/koushikdutta/async/http/b/e;

    return-object v0
.end method
