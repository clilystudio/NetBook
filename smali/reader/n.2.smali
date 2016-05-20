.class public final Lcom/ushaqi/zhuishushenqi/reader/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ushaqi/zhuishushenqi/reader/K;

.field private final b:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

.field private c:[I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/K;Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;[II)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->a:Lcom/ushaqi/zhuishushenqi/reader/K;

    .line 46
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    .line 47
    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->c:[I

    .line 48
    iput p4, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->e:I

    .line 49
    aget v0, p3, p4

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->d:I

    .line 50
    return-void
.end method

.method public static a(Lcom/ushaqi/zhuishushenqi/reader/K;Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;I)Lcom/ushaqi/zhuishushenqi/reader/n;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/n;

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/n;-><init>(Lcom/ushaqi/zhuishushenqi/reader/K;Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;[II)V

    .line 40
    iput p2, v0, Lcom/ushaqi/zhuishushenqi/reader/n;->f:I

    .line 41
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/n;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/design/widget/am;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->e:I

    .line 266
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/reader/e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ushaqi/zhuishushenqi/reader/e",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/n;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/n;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/n;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->a:Lcom/ushaqi/zhuishushenqi/reader/K;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ushaqi/zhuishushenqi/reader/K;->b(ILcom/ushaqi/zhuishushenqi/reader/e;Z)V

    .line 207
    :goto_0
    return-void

    .line 202
    :cond_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/n;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->a:Lcom/ushaqi/zhuishushenqi/reader/K;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->c:[I

    iget v4, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->e:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/reader/n;-><init>(Lcom/ushaqi/zhuishushenqi/reader/K;Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;[II)V

    invoke-interface {p1, v0}, Lcom/ushaqi/zhuishushenqi/reader/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 205
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ushaqi/zhuishushenqi/reader/e;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->a:Lcom/ushaqi/zhuishushenqi/reader/K;

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/K;->a(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->c:[I

    .line 233
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->c:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->d:I

    .line 234
    return-void
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->c:[I

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->e:I

    aget v0, v0, v1

    return v0
.end method

.method public final b(Lcom/ushaqi/zhuishushenqi/reader/e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ushaqi/zhuishushenqi/reader/e",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/n;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/n;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->e:I

    if-lez v0, :cond_0

    .line 218
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/n;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->a:Lcom/ushaqi/zhuishushenqi/reader/K;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->c:[I

    iget v4, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->e:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/reader/n;-><init>(Lcom/ushaqi/zhuishushenqi/reader/K;Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;[II)V

    invoke-interface {p1, v0}, Lcom/ushaqi/zhuishushenqi/reader/e;->a(Ljava/lang/Object;)V

    .line 225
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->a:Lcom/ushaqi/zhuishushenqi/reader/K;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ushaqi/zhuishushenqi/reader/K;->a(ILcom/ushaqi/zhuishushenqi/reader/e;Z)V

    goto :goto_0

    .line 223
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ushaqi/zhuishushenqi/reader/e;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 5

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    invoke-virtual {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getBody(Lcom/ushaqi/zhuishushenqi/reader/n;)Ljava/lang/String;

    move-result-object v1

    .line 65
    if-nez v1, :cond_0

    .line 66
    const-string v0, ""

    .line 85
    :goto_0
    return-object v0

    .line 71
    :cond_0
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->e:I

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->c:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_1

    .line 72
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->c:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->e:I

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->c:[I

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->e:I

    aget v0, v0, v2

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->d:I

    .line 75
    const-string v0, ""

    .line 77
    :try_start_0
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->e:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->c:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 78
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->d:I

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->c:[I

    iget v4, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->e:I

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_2
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final d()[Ljava/lang/Object;
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 93
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    invoke-virtual {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getBody(Lcom/ushaqi/zhuishushenqi/reader/n;)Ljava/lang/String;

    move-result-object v0

    .line 94
    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 150
    :goto_0
    return-object v0

    .line 98
    :cond_0
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->e:I

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->c:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_1

    .line 99
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->c:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->e:I

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->c:[I

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->e:I

    aget v1, v1, v2

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->d:I

    .line 104
    const-string v1, ""

    .line 106
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 109
    :try_start_0
    iget v4, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->e:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->c:[I

    array-length v5, v5

    if-ge v4, v5, :cond_5

    .line 110
    iget v4, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->d:I

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->c:[I

    iget v6, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->e:I

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 114
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->c:[I

    iget v6, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->e:I

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 117
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 118
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_2
    const-string v5, "\u3000\u3000"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    :goto_1
    move-object v1, v4

    .line 127
    :goto_2
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 129
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 130
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    aget-object v8, v1, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    .line 134
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    move v0, v3

    .line 137
    :cond_3
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->c:[I

    iget v7, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->e:I

    add-int/2addr v7, v0

    aget v3, v3, v7

    iget v7, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->d:I

    sub-int/2addr v3, v7

    .line 138
    const-string v7, "%.2f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    int-to-float v10, v4

    int-to-float v3, v3

    add-float/2addr v3, v10

    add-int v10, v4, v5

    int-to-float v10, v10

    div-float/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/high16 v7, 0x42c80000

    mul-float/2addr v3, v7

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v0, v0, 0x1

    .line 140
    iget v3, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->e:I

    add-int/2addr v3, v0

    iget-object v7, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->c:[I

    array-length v7, v7

    if-eq v3, v7, :cond_4

    .line 143
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->c:[I

    iget v7, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->e:I

    add-int/2addr v7, v0

    aget v3, v3, v7

    iget v7, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->d:I

    sub-int/2addr v3, v7

    if-lt v3, v5, :cond_3

    .line 145
    :cond_4
    const/4 v0, 0x0

    aput-object v1, v2, v0

    .line 146
    const/4 v0, 0x1

    aput-object v6, v2, v0

    :goto_3
    move-object v0, v2

    .line 150
    goto/16 :goto_0

    .line 124
    :cond_5
    iget v4, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->d:I

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_2

    .line 147
    :catch_0
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/n;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->e:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/CipherUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->a:Lcom/ushaqi/zhuishushenqi/reader/K;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/K;->a(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->c:[I

    .line 245
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->c:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->d:I

    goto :goto_0
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 253
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->e:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->c:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->e:I

    return v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->c:[I

    array-length v0, v0

    return v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getIndex()I

    move-result v0

    return v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->d:I

    return v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->f:I

    return v0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getStatus()I

    move-result v0

    return v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 289
    .line 1285
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getStatus()I

    move-result v1

    .line 289
    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Lcom/ushaqi/zhuishushenqi/reader/K;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/n;->a:Lcom/ushaqi/zhuishushenqi/reader/K;

    return-object v0
.end method
