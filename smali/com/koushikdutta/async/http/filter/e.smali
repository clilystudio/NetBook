.class final Lcom/koushikdutta/async/http/filter/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/S;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/S",
        "<[B>;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/koushikdutta/async/y;

.field final synthetic c:Lcom/koushikdutta/async/I;

.field final synthetic d:Lcom/koushikdutta/async/http/filter/d;

.field private e:I


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/filter/d;Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/I;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/e;->d:Lcom/koushikdutta/async/http/filter/d;

    iput-object p2, p0, Lcom/koushikdutta/async/http/filter/e;->b:Lcom/koushikdutta/async/y;

    iput-object p3, p0, Lcom/koushikdutta/async/http/filter/e;->c:Lcom/koushikdutta/async/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    new-instance v0, Lcom/koushikdutta/async/I;

    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/e;->b:Lcom/koushikdutta/async/y;

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/I;-><init>(Lcom/koushikdutta/async/y;)V

    .line 82
    new-instance v1, Lcom/koushikdutta/async/http/filter/h;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/filter/h;-><init>(Lcom/koushikdutta/async/http/filter/e;)V

    .line 96
    iget v2, p0, Lcom/koushikdutta/async/http/filter/e;->e:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {v0, v3, v1}, Lcom/koushikdutta/async/I;->a(BLcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/I;

    .line 106
    :goto_0
    return-void

    .line 100
    :cond_0
    iget v2, p0, Lcom/koushikdutta/async/http/filter/e;->e:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    .line 101
    invoke-virtual {v0, v3, v1}, Lcom/koushikdutta/async/I;->a(BLcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/I;

    goto :goto_0

    .line 105
    :cond_1
    invoke-direct {p0}, Lcom/koushikdutta/async/http/filter/e;->b()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/filter/e;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/koushikdutta/async/http/filter/e;->a()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/filter/e;->a:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/e;->c:Lcom/koushikdutta/async/I;

    const/4 v1, 0x2

    new-instance v2, Lcom/koushikdutta/async/http/filter/i;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/filter/i;-><init>(Lcom/koushikdutta/async/http/filter/e;)V

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/I;->a(ILcom/koushikdutta/async/S;)Lcom/koushikdutta/async/I;

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/e;->d:Lcom/koushikdutta/async/http/filter/d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/koushikdutta/async/http/filter/d;->a:Z

    .line 125
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/e;->d:Lcom/koushikdutta/async/http/filter/d;

    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/e;->b:Lcom/koushikdutta/async/y;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/filter/d;->a(Lcom/koushikdutta/async/y;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/filter/e;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/koushikdutta/async/http/filter/e;->b()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 42
    check-cast p1, [B

    .line 1047
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a([BILjava/nio/ByteOrder;)S

    move-result v2

    .line 1048
    const/16 v3, -0x74e1

    if-eq v2, v3, :cond_0

    .line 1049
    iget-object v3, p0, Lcom/koushikdutta/async/http/filter/e;->d:Lcom/koushikdutta/async/http/filter/d;

    new-instance v4, Ljava/io/IOException;

    const-string v5, "unknown format (magic number %x)"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/http/filter/d;->a_(Ljava/lang/Exception;)V

    .line 1050
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/e;->b:Lcom/koushikdutta/async/y;

    new-instance v1, Lcom/koushikdutta/async/H;

    invoke-direct {v1}, Lcom/koushikdutta/async/H;-><init>()V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/y;->a(Lcom/koushikdutta/async/a/b;)V

    .line 1059
    :goto_0
    return-void

    .line 1053
    :cond_0
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    iput v2, p0, Lcom/koushikdutta/async/http/filter/e;->e:I

    .line 1054
    iget v2, p0, Lcom/koushikdutta/async/http/filter/e;->e:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/filter/e;->a:Z

    .line 1055
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/filter/e;->a:Z

    if-eqz v0, :cond_1

    .line 1056
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/e;->d:Lcom/koushikdutta/async/http/filter/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/d;->b:Ljava/util/zip/CRC32;

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 1058
    :cond_1
    iget v0, p0, Lcom/koushikdutta/async/http/filter/e;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 1059
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/e;->c:Lcom/koushikdutta/async/I;

    const/4 v1, 0x2

    new-instance v2, Lcom/koushikdutta/async/http/filter/f;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/filter/f;-><init>(Lcom/koushikdutta/async/http/filter/e;)V

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/I;->a(ILcom/koushikdutta/async/S;)Lcom/koushikdutta/async/I;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1054
    goto :goto_1

    .line 1076
    :cond_3
    invoke-direct {p0}, Lcom/koushikdutta/async/http/filter/e;->a()V

    goto :goto_0
.end method
