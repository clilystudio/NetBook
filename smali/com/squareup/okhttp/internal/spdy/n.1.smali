.class final Lcom/squareup/okhttp/internal/spdy/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Lcom/squareup/okhttp/internal/spdy/n;

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/16 v0, 0x100

    new-array v0, v0, [Lcom/squareup/okhttp/internal/spdy/n;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->a:[Lcom/squareup/okhttp/internal/spdy/n;

    .line 208
    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/n;->b:I

    .line 209
    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/n;->c:I

    .line 210
    return-void
.end method

.method constructor <init>(II)V
    .locals 1

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->a:[Lcom/squareup/okhttp/internal/spdy/n;

    .line 220
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/n;->b:I

    .line 221
    and-int/lit8 v0, p2, 0x7

    .line 222
    if-nez v0, :cond_0

    const/16 v0, 0x8

    :cond_0
    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->c:I

    .line 223
    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/n;)[Lcom/squareup/okhttp/internal/spdy/n;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->a:[Lcom/squareup/okhttp/internal/spdy/n;

    return-object v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/spdy/n;)I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->b:I

    return v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/spdy/n;)I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->c:I

    return v0
.end method
