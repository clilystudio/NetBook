.class public final Lcom/nostra13/universalimageloader/a/a/a/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private a:[Ljava/io/File;

.field private final b:[Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Lcom/nostra13/universalimageloader/a/a/a/a/a;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[J)V
    .locals 0

    .prologue
    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    iput-object p5, p0, Lcom/nostra13/universalimageloader/a/a/a/a/g;->a:[Ljava/io/File;

    .line 717
    iput-object p6, p0, Lcom/nostra13/universalimageloader/a/a/a/a/g;->b:[Ljava/io/InputStream;

    .line 719
    return-void
.end method

.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/a/a/a/a/a;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[JB)V
    .locals 1

    .prologue
    .line 706
    invoke-direct/range {p0 .. p7}, Lcom/nostra13/universalimageloader/a/a/a/a/g;-><init>(Lcom/nostra13/universalimageloader/a/a/a/a/a;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/io/File;
    .locals 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/g;->a:[Ljava/io/File;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final close()V
    .locals 4

    .prologue
    .line 751
    iget-object v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/g;->b:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 752
    invoke-static {v3}, Lcom/nostra13/universalimageloader/a/a/a/a/k;->a(Ljava/io/Closeable;)V

    .line 751
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 754
    :cond_0
    return-void
.end method
