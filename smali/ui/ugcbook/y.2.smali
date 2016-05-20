.class public final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;
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


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookSummary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 203
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    .line 204
    const v0, 0x7f030173

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 205
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getBooks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;->b:Ljava/util/List;

    .line 206
    return-void
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 5

    .prologue
    .line 198
    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    .line 1236
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1237
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    .line 1238
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;I)V

    goto :goto_0

    .line 1244
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getFullCover()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020106

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageUrl(Ljava/lang/String;I)V

    .line 1245
    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1246
    const/4 v0, 0x2

    const-string v1, "%d\u4eba\u5728\u8ffd  |  %.1f%%\u8bfb\u8005\u7559\u5b58  |  %s\u8457"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getLatelyFollower()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getRetentionRatio()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getAuthor()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1247
    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getPromLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;->a(IZ)Landroid/view/View;

    .line 1248
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1249
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;->a(IZ)Landroid/view/View;

    .line 1250
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;->a(IZ)Landroid/view/View;

    .line 1257
    :goto_1
    return-void

    .line 1252
    :cond_2
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;->a(IZ)Landroid/view/View;

    .line 1253
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;->a(IZ)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1255
    :catch_0
    move-exception v0

    .line 1256
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f0c02f0
        0x7f0c02e5
        0x7f0c02f1
        0x7f0c0379
        0x7f0c0485
        0x7f0c0486
    .end array-data
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 221
    invoke-super {p0, p1, p2, p3}, Lcom/ushaqi/zhuishushenqi/util/W;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 222
    const v0, 0x7f0c0485

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 223
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/z;

    invoke-direct {v2, p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/z;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;->a(ILandroid/view/View;Ljava/lang/Object;)V

    .line 231
    return-object v1
.end method
