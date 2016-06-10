.class public final Lcom/ushaqi/zhuishushenqi/adapter/z;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/PostComment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 23
    const v0, 0x7f030110

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 24
    return-void
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/PostComment;

    .line 1049
    const/16 v0, 0xa

    const-class v1, Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/z;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;

    .line 1050
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/ushaqi/zhuishushenqi/adapter/z;->a(IZ)Landroid/view/View;

    .line 1051
    const-class v1, Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Lcom/ushaqi/zhuishushenqi/adapter/z;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/adapter/A;

    invoke-direct {v2, p0, p2}, Lcom/ushaqi/zhuishushenqi/adapter/A;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/z;Lcom/ushaqi/zhuishushenqi/model/PostComment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1057
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->b()V

    .line 1058
    invoke-virtual {v0, p2, p1}, Lcom/ushaqi/zhuishushenqi/widget/CommentItemView;->a(Lcom/ushaqi/zhuishushenqi/model/PostComment;I)V

    .line 20
    return-void
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x7f0c0381
        0x7f0c0384
        0x7f0c0385
        0x7f0c0389
        0x7f0c0386
        0x7f0c0383
        0x7f0c0387
        0x7f0c037f
        0x7f0c038c
        0x7f0c0382
        0x7f0c02c9
        0x7f0c0238
        0x7f0c038d
    .end array-data
.end method
