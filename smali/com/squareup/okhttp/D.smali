.class public final Lcom/squareup/okhttp/D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/squareup/okhttp/w;

.field private b:Ljava/lang/String;

.field private c:Lcom/squareup/okhttp/v;

.field private d:Lcom/squareup/okhttp/E;

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const-string v0, "GET"

    iput-object v0, p0, Lcom/squareup/okhttp/D;->b:Ljava/lang/String;

    .line 129
    new-instance v0, Lcom/squareup/okhttp/v;

    invoke-direct {v0}, Lcom/squareup/okhttp/v;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/D;->c:Lcom/squareup/okhttp/v;

    .line 130
    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/C;)V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-static {p1}, Lcom/squareup/okhttp/C;->a(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/w;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/D;->a:Lcom/squareup/okhttp/w;

    .line 134
    invoke-static {p1}, Lcom/squareup/okhttp/C;->b(Lcom/squareup/okhttp/C;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/D;->b:Ljava/lang/String;

    .line 135
    invoke-static {p1}, Lcom/squareup/okhttp/C;->c(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/E;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/D;->d:Lcom/squareup/okhttp/E;

    .line 136
    invoke-static {p1}, Lcom/squareup/okhttp/C;->d(Lcom/squareup/okhttp/C;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/D;->e:Ljava/lang/Object;

    .line 137
    invoke-static {p1}, Lcom/squareup/okhttp/C;->e(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/u;->b()Lcom/squareup/okhttp/v;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/D;->c:Lcom/squareup/okhttp/v;

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/C;B)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/D;-><init>(Lcom/squareup/okhttp/C;)V

    return-void
.end method

.method private a(Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/D;
    .locals 2

    .prologue
    .line 141
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iput-object p1, p0, Lcom/squareup/okhttp/D;->a:Lcom/squareup/okhttp/w;

    .line 143
    return-object p0
.end method

.method static synthetic a(Lcom/squareup/okhttp/D;)Lcom/squareup/okhttp/w;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/squareup/okhttp/D;->a:Lcom/squareup/okhttp/w;

    return-object v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/D;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/squareup/okhttp/D;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/D;)Lcom/squareup/okhttp/v;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/squareup/okhttp/D;->c:Lcom/squareup/okhttp/v;

    return-object v0
.end method

.method static synthetic d(Lcom/squareup/okhttp/D;)Lcom/squareup/okhttp/E;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/squareup/okhttp/D;->d:Lcom/squareup/okhttp/E;

    return-object v0
.end method

.method static synthetic e(Lcom/squareup/okhttp/D;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/squareup/okhttp/D;->e:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/squareup/okhttp/C;
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/squareup/okhttp/D;->a:Lcom/squareup/okhttp/w;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    new-instance v0, Lcom/squareup/okhttp/C;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/C;-><init>(Lcom/squareup/okhttp/D;B)V

    return-object v0
.end method

.method public final a(Lcom/squareup/okhttp/E;)Lcom/squareup/okhttp/D;
    .locals 1

    .prologue
    .line 217
    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lcom/squareup/okhttp/D;->a(Ljava/lang/String;Lcom/squareup/okhttp/E;)Lcom/squareup/okhttp/D;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/squareup/okhttp/D;
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    const-string v3, "ws:"

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 156
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/squareup/okhttp/w;->c(Ljava/lang/String;)Lcom/squareup/okhttp/w;

    move-result-object v0

    .line 157
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_2
    const-string v3, "wss:"

    move-object v0, p1

    move v4, v2

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 158
    :cond_3
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/D;->a(Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/D;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/squareup/okhttp/E;)Lcom/squareup/okhttp/D;
    .locals 3

    .prologue
    .line 237
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method == null || method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/arcsoft/hpay100/a/a;->q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1
    if-nez p2, :cond_2

    invoke-static {p1}, Lcom/arcsoft/hpay100/a/a;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_2
    iput-object p1, p0, Lcom/squareup/okhttp/D;->b:Ljava/lang/String;

    .line 247
    iput-object p2, p0, Lcom/squareup/okhttp/D;->d:Lcom/squareup/okhttp/E;

    .line 248
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/squareup/okhttp/D;->c:Lcom/squareup/okhttp/v;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/v;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v;

    .line 174
    return-object p0
.end method

.method public final a(Ljava/net/URL;)Lcom/squareup/okhttp/D;
    .locals 3

    .prologue
    .line 163
    invoke-static {p1}, Lcom/squareup/okhttp/w;->a(Ljava/net/URL;)Lcom/squareup/okhttp/w;

    move-result-object v0

    .line 164
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/D;->a(Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/D;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/squareup/okhttp/D;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/squareup/okhttp/D;->c:Lcom/squareup/okhttp/v;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/v;->b(Ljava/lang/String;)Lcom/squareup/okhttp/v;

    .line 188
    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/squareup/okhttp/D;->c:Lcom/squareup/okhttp/v;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v;

    .line 183
    return-object p0
.end method
