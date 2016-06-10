.class public final Lcom/ushaqi/zhuishushenqi/adapter/a;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 22
    const v0, 0x7f0300df

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/a;->a:I

    .line 23
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/adapter/a;->a:I

    .line 50
    return-void
.end method

.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 17
    check-cast p2, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    .line 1034
    const/4 v0, 0x0

    const-class v1, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/a;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getFullCover()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020106

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageUrl(Ljava/lang/String;I)V

    .line 1035
    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/a;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1036
    const/4 v0, 0x2

    const-class v1, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/a;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1037
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/a;->a:I

    if-ne v1, p1, :cond_0

    .line 1038
    const v1, 0x7f02013c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    .line 1040
    :cond_0
    const v1, 0x7f02013a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f0c02ec
        0x7f0c02ed
        0x7f0c02ee
    .end array-data
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/a;->a:I

    return v0
.end method
