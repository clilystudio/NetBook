.class public final Lcom/ushaqi/zhuishushenqi/reader/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/reader/Reader;

.field private b:Lcom/ushaqi/zhuishushenqi/reader/bZ;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/Reader;Lcom/ushaqi/zhuishushenqi/reader/bZ;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/K;->a:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    .line 23
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/K;->b:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/K;Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;I)Lcom/ushaqi/zhuishushenqi/reader/n;
    .locals 1

    .prologue
    .line 16
    .line 3074
    invoke-static {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/reader/n;->a(Lcom/ushaqi/zhuishushenqi/reader/K;Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;I)Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    .line 16
    return-object v0
.end method

.method private a(IILcom/ushaqi/zhuishushenqi/reader/e;ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/ushaqi/zhuishushenqi/reader/e",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/n;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/K;->a:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/L;

    invoke-direct {v1, p0, p3, p5, p2}, Lcom/ushaqi/zhuishushenqi/reader/L;-><init>(Lcom/ushaqi/zhuishushenqi/reader/K;Lcom/ushaqi/zhuishushenqi/reader/e;II)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(ILcom/ushaqi/zhuishushenqi/reader/e;ZZ)V

    .line 61
    return-void
.end method


# virtual methods
.method public final a()Lcom/ushaqi/zhuishushenqi/reader/Reader;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/K;->a:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    return-object v0
.end method

.method public final a(IILcom/ushaqi/zhuishushenqi/reader/e;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/ushaqi/zhuishushenqi/reader/e",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/n;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 97
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/reader/K;->a(IILcom/ushaqi/zhuishushenqi/reader/e;ZI)V

    .line 98
    return-void
.end method

.method public final a(ILcom/ushaqi/zhuishushenqi/reader/e;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ushaqi/zhuishushenqi/reader/e",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/n;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 82
    const/4 v2, -0x1

    const/4 v5, 0x2

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/reader/K;->a(IILcom/ushaqi/zhuishushenqi/reader/e;ZI)V

    .line 83
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/reader/Reader;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/K;->a:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    .line 151
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/reader/e;)V
    .locals 6
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
    .line 78
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/K;->a:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->k()I

    move-result v1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/K;->a:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->l()I

    move-result v2

    .line 1070
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/reader/K;->a(IILcom/ushaqi/zhuishushenqi/reader/e;ZI)V

    .line 79
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/reader/e;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ushaqi/zhuishushenqi/reader/e",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/n;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 101
    .line 2064
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;-><init>()V

    .line 2065
    invoke-virtual {v0, p2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setStatus(I)V

    .line 2066
    const/4 v1, 0x0

    .line 2074
    invoke-static {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/n;->a(Lcom/ushaqi/zhuishushenqi/reader/K;Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;I)Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    .line 2066
    invoke-interface {p1, v0}, Lcom/ushaqi/zhuishushenqi/reader/e;->a(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public final a(Ljava/lang/String;)[I
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 108
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 109
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/K;->b:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v0, v0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a:I

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 111
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/K;->b:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v3, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->f:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/K;->b:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->b:I

    int-to-float v6, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 112
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 114
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    .line 118
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/K;->b:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v4, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->e:I

    .line 119
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v7

    .line 121
    :cond_0
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v6

    .line 122
    invoke-virtual {v0, v6}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v2

    iget-object v8, p0, Lcom/ushaqi/zhuishushenqi/reader/K;->b:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v8, v8, Lcom/ushaqi/zhuishushenqi/reader/bZ;->e:I

    add-int/2addr v2, v8

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v2

    .line 123
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v8

    invoke-virtual {v0, v6}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v9

    sub-int/2addr v8, v9

    if-le v8, v4, :cond_1

    .line 124
    add-int/lit8 v2, v2, -0x1

    .line 126
    :cond_1
    invoke-virtual {v0, v6}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v6

    .line 127
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v8

    .line 129
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 130
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v6, v1, :cond_3

    .line 131
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_3
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v1

    .line 135
    :cond_4
    add-int/lit8 v6, v3, -0x1

    if-lt v2, v6, :cond_0

    .line 137
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 138
    array-length v2, v1

    :goto_0
    if-ge v7, v2, :cond_5

    .line 139
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v7

    .line 138
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 142
    :cond_5
    return-object v1
.end method

.method public final b(ILcom/ushaqi/zhuishushenqi/reader/e;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ushaqi/zhuishushenqi/reader/e",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/n;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 93
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/reader/K;->a(IILcom/ushaqi/zhuishushenqi/reader/e;ZI)V

    .line 94
    return-void
.end method
