.class final Lcom/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[J

.field private c:Z

.field private d:Lcom/b/a;

.field private e:J

.field private synthetic f:Lcom/b/c;


# direct methods
.method private constructor <init>(Lcom/b/c;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 856
    iput-object p1, p0, Lcom/b/g;->f:Lcom/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    iput-object p2, p0, Lcom/b/g;->a:Ljava/lang/String;

    .line 858
    invoke-static {p1}, Lcom/b/c;->e(Lcom/b/c;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/b/g;->b:[J

    .line 859
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/c;Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 841
    invoke-direct {p0, p1, p2}, Lcom/b/g;-><init>(Lcom/b/c;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/b/g;J)J
    .locals 1

    .prologue
    .line 841
    iput-wide p1, p0, Lcom/b/g;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/b/g;)Lcom/b/a;
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/b/g;->d:Lcom/b/a;

    return-object v0
.end method

.method static synthetic a(Lcom/b/g;Lcom/b/a;)Lcom/b/a;
    .locals 0

    .prologue
    .line 841
    iput-object p1, p0, Lcom/b/g;->d:Lcom/b/a;

    return-object p1
.end method

.method private static a([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3

    .prologue
    .line 887
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/b/g;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 841
    .line 1873
    array-length v0, p1

    iget-object v1, p0, Lcom/b/g;->f:Lcom/b/c;

    invoke-static {v1}, Lcom/b/c;->e(Lcom/b/c;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1874
    invoke-static {p1}, Lcom/b/g;->a([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1878
    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1879
    iget-object v1, p0, Lcom/b/g;->b:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1878
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1882
    :catch_0
    move-exception v0

    invoke-static {p1}, Lcom/b/g;->a([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1883
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/b/g;Z)Z
    .locals 1

    .prologue
    .line 841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/g;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/b/g;)[J
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/b/g;->b:[J

    return-object v0
.end method

.method static synthetic c(Lcom/b/g;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/b/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/b/g;)Z
    .locals 1

    .prologue
    .line 841
    iget-boolean v0, p0, Lcom/b/g;->c:Z

    return v0
.end method

.method static synthetic e(Lcom/b/g;)J
    .locals 2

    .prologue
    .line 841
    iget-wide v0, p0, Lcom/b/g;->e:J

    return-wide v0
.end method


# virtual methods
.method public final a(I)Ljava/io/File;
    .locals 4

    .prologue
    .line 891
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/b/g;->f:Lcom/b/c;

    invoke-static {v1}, Lcom/b/c;->f(Lcom/b/c;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/b/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 7

    .prologue
    .line 862
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 863
    iget-object v2, p0, Lcom/b/g;->b:[J

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-wide v4, v2, v0

    .line 864
    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 863
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 866
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Ljava/io/File;
    .locals 4

    .prologue
    .line 895
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/b/g;->f:Lcom/b/c;

    invoke-static {v1}, Lcom/b/c;->f(Lcom/b/c;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/b/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method