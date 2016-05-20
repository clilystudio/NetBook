.class final Lcom/ushaqi/zhuishushenqi/ui/user/ag;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/LayoutInflater;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private synthetic f:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;Landroid/view/LayoutInflater;)V
    .locals 4

    .prologue
    const v3, 0x7f0b008a

    const v2, 0x7f010028

    .line 223
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ag;->f:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 224
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ag;->b:Landroid/view/LayoutInflater;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ag;->a:Ljava/util/List;

    .line 226
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "tag_index_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 227
    packed-switch v0, :pswitch_data_0

    .line 244
    :goto_0
    return-void

    .line 229
    :pswitch_0
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f010029

    invoke-static {v0, v1}, Landroid/support/design/widget/am;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ag;->c:I

    .line 230
    const v0, 0x7f0b008b

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ag;->d:I

    .line 231
    const-string v0, "\u53ef\n\u4f7f\n\u7528"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ag;->e:Ljava/lang/String;

    goto :goto_0

    .line 234
    :pswitch_1
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/support/design/widget/am;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ag;->c:I

    .line 235
    iput v3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ag;->d:I

    .line 236
    const-string v0, "\u5df2\n\u7528\n\u5b8c"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ag;->e:Ljava/lang/String;

    goto :goto_0

    .line 239
    :pswitch_2
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/support/design/widget/am;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ag;->c:I

    .line 240
    iput v3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ag;->d:I

    .line 241
    const-string v0, "\u5df2\n\u8fc7\n\u671f"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ag;->e:Ljava/lang/String;

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ag;->a:Ljava/util/List;

    .line 248
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/ag;->notifyDataSetChanged()V

    .line 249
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ag;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ag;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 263
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 269
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ag;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;

    .line 270
    if-nez p2, :cond_0

    .line 271
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/user/ah;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/ah;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/ag;)V

    .line 272
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ag;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f030118

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 273
    const v1, 0x7f0c03a2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/ushaqi/zhuishushenqi/ui/user/ah;->a:Landroid/widget/TextView;

    .line 274
    const v1, 0x7f0c03a5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/ushaqi/zhuishushenqi/ui/user/ah;->b:Landroid/widget/TextView;

    .line 275
    const v1, 0x7f0c03a3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/ushaqi/zhuishushenqi/ui/user/ah;->c:Landroid/widget/TextView;

    .line 276
    const v1, 0x7f0c03a4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/ushaqi/zhuishushenqi/ui/user/ah;->d:Landroid/widget/TextView;

    .line 277
    const v1, 0x7f0c03a1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/ushaqi/zhuishushenqi/ui/user/ah;->e:Landroid/widget/TextView;

    .line 278
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 282
    :goto_0
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/ui/user/ah;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;->getAmount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/ui/user/ah;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/ui/user/ah;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u4f59\u989d\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;->getBalance()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/ui/user/ah;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6709\u6548\u671f\u81f3"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;->getExpired()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/t;->c(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/ah;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ag;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/ah;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ag;->f:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ag;->d:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    iget-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/ah;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ag;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 289
    return-object p2

    .line 280
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/ui/user/ah;

    goto :goto_0
.end method
