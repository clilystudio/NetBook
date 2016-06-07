.class public final Lcom/koushikdutta/async/http/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/koushikdutta/async/http/b/e;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/b/e;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/b/h;->b:Ljava/util/Set;

    .line 117
    iput-object p2, p0, Lcom/koushikdutta/async/http/b/h;->a:Lcom/koushikdutta/async/http/b/e;

    .line 119
    new-instance v3, Lcom/koushikdutta/async/http/b/i;

    invoke-direct {v3, p0}, Lcom/koushikdutta/async/http/b/i;-><init>(Lcom/koushikdutta/async/http/b/h;)V

    move v0, v1

    .line 137
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/b/e;->d()I

    move-result v2

    if-ge v0, v2, :cond_b

    .line 138
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/b/e;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/b/e;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 140
    const-string v5, "Cache-Control"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 141
    invoke-static {v4, v3}, Lcom/koushikdutta/async/http/b/a;->a(Ljava/lang/String;Lcom/koushikdutta/async/http/b/b;)V

    .line 137
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    const-string v5, "Date"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 143
    invoke-static {v4}, Lcom/koushikdutta/async/http/b/c;->a(Ljava/lang/String;)Ljava/util/Date;

    goto :goto_1

    .line 144
    :cond_2
    const-string v5, "Expires"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 145
    invoke-static {v4}, Lcom/koushikdutta/async/http/b/c;->a(Ljava/lang/String;)Ljava/util/Date;

    goto :goto_1

    .line 146
    :cond_3
    const-string v5, "Last-Modified"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 147
    invoke-static {v4}, Lcom/koushikdutta/async/http/b/c;->a(Ljava/lang/String;)Ljava/util/Date;

    goto :goto_1

    .line 148
    :cond_4
    const-string v5, "ETag"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 150
    const-string v5, "Pragma"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 151
    const-string v2, "no-cache"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 154
    :cond_5
    const-string v5, "Age"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 155
    invoke-static {v4}, Lcom/koushikdutta/async/http/b/a;->a(Ljava/lang/String;)I

    goto :goto_1

    .line 156
    :cond_6
    const-string v5, "Vary"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 158
    iget-object v2, p0, Lcom/koushikdutta/async/http/b/h;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 159
    new-instance v2, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v2, p0, Lcom/koushikdutta/async/http/b/h;->b:Ljava/util/Set;

    .line 161
    :cond_7
    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    .line 162
    iget-object v7, p0, Lcom/koushikdutta/async/http/b/h;->b:Ljava/util/Set;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 164
    :cond_8
    const-string v5, "Content-Encoding"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 166
    const-string v5, "Transfer-Encoding"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 168
    const-string v5, "Content-Length"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 170
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 172
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 173
    :cond_9
    const-string v5, "Connection"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 175
    const-string v5, "Proxy-Authenticate"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 177
    const-string v5, "WWW-Authenticate"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 179
    const-string v5, "X-Android-Sent-Millis"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 180
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    goto/16 :goto_1

    .line 181
    :cond_a
    const-string v5, "X-Android-Received-Millis"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    goto/16 :goto_1

    .line 185
    :cond_b
    return-void
.end method


# virtual methods
.method public final a()Lcom/koushikdutta/async/http/b/e;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/h;->a:Lcom/koushikdutta/async/http/b/e;

    return-object v0
.end method
