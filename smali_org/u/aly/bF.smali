.class public final Lu/aly/bF;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;

.field private final b:Lu/aly/bX;

.field private c:Lu/aly/bN;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lu/aly/cs$a;

    invoke-direct {v0}, Lu/aly/cs$a;-><init>()V

    invoke-direct {p0, v0}, Lu/aly/bF;-><init>(Lu/aly/da;)V

    .line 59
    return-void
.end method

.method private constructor <init>(Lu/aly/da;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lu/aly/bF;->a:Ljava/io/ByteArrayOutputStream;

    .line 47
    new-instance v0, Lu/aly/bX;

    iget-object v1, p0, Lu/aly/bF;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lu/aly/bX;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lu/aly/bF;->b:Lu/aly/bX;

    .line 68
    iget-object v0, p0, Lu/aly/bF;->b:Lu/aly/bX;

    invoke-interface {p1, v0}, Lu/aly/da;->a(Lu/aly/bZ;)Lu/aly/bN;

    move-result-object v0

    iput-object v0, p0, Lu/aly/bF;->c:Lu/aly/bN;

    .line 69
    return-void
.end method


# virtual methods
.method public final a(Lu/aly/bz;)[B
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lu/aly/bF;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 82
    iget-object v0, p0, Lu/aly/bF;->c:Lu/aly/bN;

    invoke-interface {p1, v0}, Lu/aly/bz;->b(Lu/aly/bN;)V

    .line 83
    iget-object v0, p0, Lu/aly/bF;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
