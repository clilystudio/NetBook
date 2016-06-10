.class public Lcom/koushikdutta/async/http/filter/c;
.super Lcom/koushikdutta/async/C;
.source "SourceFile"


# static fields
.field private static synthetic d:Z


# instance fields
.field private a:J

.field private b:J

.field private c:Lcom/koushikdutta/async/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/koushikdutta/async/http/filter/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/http/filter/c;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/koushikdutta/async/C;-><init>()V

    .line 21
    new-instance v0, Lcom/koushikdutta/async/v;

    invoke-direct {v0}, Lcom/koushikdutta/async/v;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/c;->c:Lcom/koushikdutta/async/v;

    .line 9
    iput-wide p1, p0, Lcom/koushikdutta/async/http/filter/c;->a:J

    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)V
    .locals 6

    .prologue
    .line 24
    sget-boolean v0, Lcom/koushikdutta/async/http/filter/c;->d:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/koushikdutta/async/http/filter/c;->b:J

    iget-wide v2, p0, Lcom/koushikdutta/async/http/filter/c;->a:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 26
    :cond_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/v;->c()I

    move-result v0

    .line 27
    iget-wide v2, p0, Lcom/koushikdutta/async/http/filter/c;->a:J

    iget-wide v4, p0, Lcom/koushikdutta/async/http/filter/c;->b:J

    sub-long/2addr v2, v4

    int-to-long v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 29
    iget-object v2, p0, Lcom/koushikdutta/async/http/filter/c;->c:Lcom/koushikdutta/async/v;

    long-to-int v0, v0

    invoke-virtual {p2, v2, v0}, Lcom/koushikdutta/async/v;->a(Lcom/koushikdutta/async/v;I)V

    .line 31
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/c;->c:Lcom/koushikdutta/async/v;

    invoke-virtual {v0}, Lcom/koushikdutta/async/v;->c()I

    move-result v0

    .line 33
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/c;->c:Lcom/koushikdutta/async/v;

    invoke-super {p0, p1, v1}, Lcom/koushikdutta/async/C;->a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)V

    .line 35
    iget-wide v2, p0, Lcom/koushikdutta/async/http/filter/c;->b:J

    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/c;->c:Lcom/koushikdutta/async/v;

    invoke-virtual {v1}, Lcom/koushikdutta/async/v;->c()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/koushikdutta/async/http/filter/c;->b:J

    .line 36
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/c;->c:Lcom/koushikdutta/async/v;

    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/v;->a(Lcom/koushikdutta/async/v;)V

    .line 38
    iget-wide v0, p0, Lcom/koushikdutta/async/http/filter/c;->b:J

    iget-wide v2, p0, Lcom/koushikdutta/async/http/filter/c;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/filter/c;->a_(Ljava/lang/Exception;)V

    .line 40
    :cond_1
    return-void
.end method

.method protected final a_(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 14
    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/koushikdutta/async/http/filter/c;->b:J

    iget-wide v2, p0, Lcom/koushikdutta/async/http/filter/c;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 15
    new-instance p1, Lcom/koushikdutta/async/http/filter/PrematureDataEndException;

    const-string v0, "End of data reached before content length was read"

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/http/filter/PrematureDataEndException;-><init>(Ljava/lang/String;)V

    .line 16
    :cond_0
    invoke-super {p0, p1}, Lcom/koushikdutta/async/C;->a_(Ljava/lang/Exception;)V

    .line 17
    return-void
.end method
