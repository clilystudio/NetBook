.class final Lcom/ushaqi/zhuishushenqi/ui/user/S;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;",
            ">;"
        }
    .end annotation
.end field

.field private d:[Z


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 204
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/S;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 205
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/S;->b:Landroid/view/LayoutInflater;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/S;->c:Ljava/util/List;

    .line 207
    const/4 v0, 0x0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/S;->d:[Z

    .line 208
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/S;Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;Landroid/view/View;Landroid/view/View;I)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 199
    .line 1333
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/S;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030133

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1334
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/S;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v3, v0, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 1335
    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1336
    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1337
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1338
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1339
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 1341
    const v1, 0x7f0c03cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1342
    const v1, 0x7f0c03cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1343
    const v1, 0x7f0c03cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 1345
    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/S;->d:[Z

    aget-boolean v2, v2, p4

    if-eqz v2, :cond_0

    const-string v2, "\u6536\u8d77\u8be6\u60c5"

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1346
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/V;

    invoke-direct {v0, p0, p1, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/V;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/S;Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;Landroid/widget/PopupWindow;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1354
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/W;

    invoke-direct {v0, p0, p4, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/W;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/S;ILandroid/widget/PopupWindow;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1372
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->getPayType()Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    move-result-object v0

    sget-object v2, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;->MULTIPLE_CHAPTERS:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    if-ne v0, v2, :cond_1

    .line 1373
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1374
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1380
    :goto_1
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1381
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/S;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;F)I

    move-result v0

    const/16 v1, 0x35

    invoke-virtual {v3, p2, v0, v6, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    :goto_2
    return-void

    .line 1345
    :cond_0
    const-string v2, "\u5c55\u5f00\u8be6\u60c5"

    goto :goto_0

    .line 1376
    :cond_1
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1377
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1383
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/S;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    const/high16 v1, 0x43200000    # 160.0f

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v3, p2, v0, v6}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/S;)[Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/S;->d:[Z

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/S;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/S;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/S;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/S;->d:[Z

    .line 214
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/S;->notifyDataSetChanged()V

    .line 215
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/S;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/S;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 229
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 235
    if-nez p2, :cond_2

    .line 236
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/S;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300d1

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 237
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/Y;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/S;)V

    .line 238
    const v0, 0x7f0c0307

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->a:Landroid/widget/TextView;

    .line 239
    const v0, 0x7f0c0308

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->b:Landroid/widget/TextView;

    .line 240
    const v0, 0x7f0c0309

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->c:Landroid/widget/TextView;

    .line 241
    const v0, 0x7f0c030a

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->d:Landroid/widget/TextView;

    .line 242
    const v0, 0x7f0c030c

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->e:Landroid/widget/TextView;

    .line 243
    const v0, 0x7f0c030e

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->f:Landroid/widget/TextView;

    .line 244
    const v0, 0x7f0c030d

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->g:Landroid/view/View;

    .line 245
    const v0, 0x7f0c02ca

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->h:Landroid/view/View;

    .line 246
    const v0, 0x7f0c030b

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->i:Landroid/widget/ImageView;

    .line 247
    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/S;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;

    .line 252
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->getPayType()Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    move-result-object v6

    .line 253
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->getBookName()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v4, :cond_0

    .line 255
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "..."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    :cond_0
    iget-object v7, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->a:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->e:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->getUseCurrency()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->getUseVoucher()I

    move-result v0

    if-lez v0, :cond_3

    .line 260
    iget-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->f:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->getUseVoucher()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :goto_1
    iget-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->getCreated()Ljava/util/Date;

    move-result-object v7

    invoke-static {v7}, Lcom/ushaqi/zhuishushenqi/util/t;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->getPayTypeString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    sget-object v0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;->WHOLE_BOOK:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    if-eq v6, v0, :cond_1

    sget-object v0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;->MULTIPLE_CHAPTERS:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    if-ne v6, v0, :cond_4

    .line 271
    :cond_1
    iget-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    :goto_2
    sget-object v0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;->MULTIPLE_CHAPTERS:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    if-ne v6, v0, :cond_8

    move-object v0, v5

    .line 292
    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/PayRecordCollapseItem;

    .line 293
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->getTitles()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, p1}, Lcom/ushaqi/zhuishushenqi/widget/PayRecordCollapseItem;->a([Ljava/lang/String;I)V

    .line 294
    iget-object v6, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/S;->d:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_7

    move v0, v2

    :goto_3
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 298
    :goto_4
    iget-object v4, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->i:Landroid/widget/ImageView;

    .line 300
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/T;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/ui/user/T;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/S;ILcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    return-object v5

    .line 249
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/user/Y;

    move-object v1, v0

    move-object v5, p2

    goto/16 :goto_0

    .line 263
    :cond_3
    iget-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->g:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 273
    :cond_4
    iget-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    sget-object v0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;->VIP_SERVICE:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    if-ne v6, v0, :cond_5

    .line 276
    iget-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->getBookName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->getChapterTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->b:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->d:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 282
    :cond_5
    iget-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->getChapterTitle()Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_6

    .line 285
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "..."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    :cond_6
    iget-object v7, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->b:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_7
    move v0, v4

    .line 294
    goto :goto_3

    .line 296
    :cond_8
    iget-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/user/Y;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method
