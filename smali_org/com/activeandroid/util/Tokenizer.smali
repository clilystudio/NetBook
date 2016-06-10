.class public Lcom/activeandroid/util/Tokenizer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCurrent:I

.field private mIsNext:Z

.field private final mStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/activeandroid/util/Tokenizer;->mStream:Ljava/io/InputStream;

    .line 33
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 37
    iget-boolean v1, p0, Lcom/activeandroid/util/Tokenizer;->mIsNext:Z

    if-nez v1, :cond_0

    .line 38
    iput-boolean v0, p0, Lcom/activeandroid/util/Tokenizer;->mIsNext:Z

    .line 39
    iget-object v1, p0, Lcom/activeandroid/util/Tokenizer;->mStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lcom/activeandroid/util/Tokenizer;->mCurrent:I

    .line 41
    :cond_0
    iget v1, p0, Lcom/activeandroid/util/Tokenizer;->mCurrent:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()I
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/activeandroid/util/Tokenizer;->mIsNext:Z

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/activeandroid/util/Tokenizer;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/activeandroid/util/Tokenizer;->mCurrent:I

    .line 49
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/activeandroid/util/Tokenizer;->mIsNext:Z

    .line 50
    iget v0, p0, Lcom/activeandroid/util/Tokenizer;->mCurrent:I

    return v0
.end method

.method public skip(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 55
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget v3, p0, Lcom/activeandroid/util/Tokenizer;->mCurrent:I

    if-ne v2, v3, :cond_0

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 64
    iget-object v2, p0, Lcom/activeandroid/util/Tokenizer;->mStream:Ljava/io/InputStream;

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Ljava/io/InputStream;->mark(I)V

    move v2, v1

    .line 66
    :goto_1
    if-ge v2, v3, :cond_3

    .line 67
    iget-object v4, p0, Lcom/activeandroid/util/Tokenizer;->mStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 69
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2

    .line 70
    iget-object v1, p0, Lcom/activeandroid/util/Tokenizer;->mStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 66
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 74
    goto :goto_0
.end method
