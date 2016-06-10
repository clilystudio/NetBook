.class final Lcom/ushaqi/zhuishushenqi/ui/user/M;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/M;->b:Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 199
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/M;->a:Ljava/util/List;

    .line 200
    return-void
.end method

.method private static a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    if-nez p0, :cond_0

    .line 285
    const-string v0, ""

    .line 287
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/M;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/M;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 218
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 224
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/M;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;

    .line 225
    if-nez p2, :cond_0

    .line 226
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/user/N;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/N;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/M;)V

    .line 227
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/M;->b:Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f0300fe

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 228
    const v1, 0x7f0c0359

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/ushaqi/zhuishushenqi/ui/user/N;->a:Landroid/view/View;

    .line 229
    const v1, 0x7f0c035a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/ushaqi/zhuishushenqi/ui/user/N;->b:Landroid/widget/ImageView;

    .line 230
    const v1, 0x7f0c035d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/ushaqi/zhuishushenqi/ui/user/N;->c:Landroid/widget/TextView;

    .line 231
    const v1, 0x7f0c035c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/ushaqi/zhuishushenqi/ui/user/N;->e:Landroid/widget/TextView;

    .line 232
    const v1, 0x7f0c035b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/ushaqi/zhuishushenqi/ui/user/N;->f:Landroid/widget/TextView;

    .line 233
    const v1, 0x7f0c035e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/ushaqi/zhuishushenqi/ui/user/N;->d:Landroid/widget/TextView;

    .line 234
    const v1, 0x7f0c0358

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/ushaqi/zhuishushenqi/ui/user/N;->g:Landroid/widget/TextView;

    .line 235
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 240
    :goto_0
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->getPayType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "time_flag"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/ui/user/N;->a:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/ui/user/N;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/user/N;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->getTimeflag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :goto_1
    return-object p2

    .line 237
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/ui/user/N;

    goto :goto_0

    .line 245
    :cond_1
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/ui/user/N;->a:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/ui/user/N;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/ui/user/N;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->getChargeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/ui/user/N;->f:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->getPrice()F

    move-result v5

    .line 1147
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v7, "0.00"

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1148
    float-to-double v8, v5

    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    .line 248
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u5143"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    const v2, 0x7f02020e

    .line 252
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->getPayType()Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_2
    move v3, v4

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 266
    :goto_3
    iget-object v3, v1, Lcom/ushaqi/zhuishushenqi/ui/user/N;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->getCreated()Ljava/util/Date;

    move-result-object v4

    const-string v5, "MM-dd"

    invoke-static {v4, v5}, Lcom/ushaqi/zhuishushenqi/ui/user/M;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v3, v1, Lcom/ushaqi/zhuishushenqi/ui/user/N;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->getCreated()Ljava/util/Date;

    move-result-object v0

    const-string v4, "mm:ss"

    invoke-static {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/user/M;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/N;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 252
    :sswitch_0
    const-string v6, "alipay"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :sswitch_1
    const-string v3, "weixinpay"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_2
    const-string v3, "youyifupay"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_2

    .line 254
    :pswitch_0
    const v2, 0x7f02020f

    .line 256
    goto :goto_3

    .line 258
    :pswitch_1
    const v2, 0x7f02021d

    .line 260
    goto :goto_3

    .line 262
    :pswitch_2
    const v2, 0x7f020218

    goto :goto_3

    .line 252
    nop

    :sswitch_data_0
    .sparse-switch
        -0x545695b6 -> :sswitch_0
        -0xbe0cc96 -> :sswitch_2
        0x6cd57b06 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
