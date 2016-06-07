.class public final Lcom/squareup/okhttp/internal/spdy/I;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/net/Socket;

.field private c:Lcom/squareup/okhttp/internal/spdy/o;

.field private d:Lcom/squareup/okhttp/Protocol;

.field private e:Lcom/squareup/okhttp/internal/spdy/u;

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/net/Socket;)V
    .locals 1

    .prologue
    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/o;->a:Lcom/squareup/okhttp/internal/spdy/o;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/I;->c:Lcom/squareup/okhttp/internal/spdy/o;

    .line 522
    sget-object v0, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/I;->d:Lcom/squareup/okhttp/Protocol;

    .line 523
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/u;->a:Lcom/squareup/okhttp/internal/spdy/u;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/I;->e:Lcom/squareup/okhttp/internal/spdy/u;

    .line 535
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/I;->a:Ljava/lang/String;

    .line 536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/I;->f:Z

    .line 537
    iput-object p3, p0, Lcom/squareup/okhttp/internal/spdy/I;->b:Ljava/net/Socket;

    .line 538
    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/I;)Lcom/squareup/okhttp/Protocol;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/I;->d:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/spdy/I;)Lcom/squareup/okhttp/internal/spdy/u;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/I;->e:Lcom/squareup/okhttp/internal/spdy/u;

    return-object v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/spdy/I;)Z
    .locals 1

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/I;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/spdy/I;)Lcom/squareup/okhttp/internal/spdy/o;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/I;->c:Lcom/squareup/okhttp/internal/spdy/o;

    return-object v0
.end method

.method static synthetic e(Lcom/squareup/okhttp/internal/spdy/I;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/I;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/squareup/okhttp/internal/spdy/I;)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/I;->b:Ljava/net/Socket;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/squareup/okhttp/internal/spdy/A;
    .locals 2

    .prologue
    .line 556
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/A;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/spdy/A;-><init>(Lcom/squareup/okhttp/internal/spdy/I;B)V

    return-object v0
.end method

.method public final a(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/internal/spdy/I;
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/I;->d:Lcom/squareup/okhttp/Protocol;

    .line 547
    return-object p0
.end method
