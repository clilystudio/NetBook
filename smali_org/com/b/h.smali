.class public final Lcom/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:[Ljava/io/InputStream;

.field private synthetic d:Lcom/b/c;


# direct methods
.method private constructor <init>(Lcom/b/c;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 639
    iput-object p1, p0, Lcom/b/h;->d:Lcom/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    iput-object p2, p0, Lcom/b/h;->a:Ljava/lang/String;

    .line 641
    iput-wide p3, p0, Lcom/b/h;->b:J

    .line 642
    iput-object p5, p0, Lcom/b/h;->c:[Ljava/io/InputStream;

    .line 643
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/c;Ljava/lang/String;J[Ljava/io/InputStream;B)V
    .locals 1

    .prologue
    .line 634
    invoke-direct/range {p0 .. p5}, Lcom/b/h;-><init>(Lcom/b/c;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/a;
    .locals 4

    .prologue
    .line 651
    iget-object v0, p0, Lcom/b/h;->d:Lcom/b/c;

    iget-object v1, p0, Lcom/b/h;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/b/h;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/b/c;->a(Lcom/b/c;Ljava/lang/String;J)Lcom/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/b/h;->c:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final close()V
    .locals 4

    .prologue
    .line 669
    iget-object v1, p0, Lcom/b/h;->c:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 670
    invoke-static {v3}, Lcom/b/a;->a(Ljava/io/Closeable;)V

    .line 669
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 672
    :cond_0
    return-void
.end method
