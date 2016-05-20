.class final Lcom/ushaqi/zhuishushenqi/reader/br;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/MixChapterResource;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapterDialog;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderChapterDialog;Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 97
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/br;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapterDialog;

    .line 98
    const v0, 0x7f0300e7

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 99
    return-void
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 95
    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/MixChapterResource;

    .line 1109
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/MixChapterResource;->getChapter()Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    move-result-object v0

    .line 1110
    if-eqz v0, :cond_0

    .line 1113
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/MixChapterResource;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/ushaqi/zhuishushenqi/reader/br;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1114
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/br;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapterDialog;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapterDialog;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderChapterDialog;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/br;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapterDialog;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapterDialog;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderChapterDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1115
    invoke-virtual {p0, v2, v3}, Lcom/ushaqi/zhuishushenqi/reader/br;->a(IZ)Landroid/view/View;

    :cond_0
    :goto_0
    return-void

    .line 1117
    :cond_1
    invoke-virtual {p0, v2, v2}, Lcom/ushaqi/zhuishushenqi/reader/br;->a(IZ)Landroid/view/View;

    goto :goto_0
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f0c0304
        0x7f0c0305
    .end array-data
.end method
