.class final Lcom/ushaqi/zhuishushenqi/ui/aV;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/BookSummary;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 190
    const v0, 0x7f0300e6

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 191
    return-void
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 187
    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    .line 1203
    const-class v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p0, v4, v0}, Lcom/ushaqi/zhuishushenqi/ui/aV;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getFullCover()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020106

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageUrl(Ljava/lang/String;I)V

    .line 1204
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/ushaqi/zhuishushenqi/ui/aV;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1205
    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getShortIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/aV;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1207
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getTags()[Ljava/lang/String;

    move-result-object v0

    .line 1208
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1209
    const-string v1, " | "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1210
    invoke-virtual {p0, v3, v4}, Lcom/ushaqi/zhuishushenqi/ui/aV;->a(IZ)Landroid/view/View;

    .line 1211
    invoke-virtual {p0, v3, v0}, Lcom/ushaqi/zhuishushenqi/ui/aV;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1212
    :goto_0
    return-void

    .line 1213
    :cond_0
    invoke-virtual {p0, v3, v5}, Lcom/ushaqi/zhuishushenqi/ui/aV;->a(IZ)Landroid/view/View;

    goto :goto_0
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f0c02f0
        0x7f0c02e5
        0x7f0c02f1
        0x7f0c0303
    .end array-data
.end method
