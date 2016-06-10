.class public Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private checkedPositionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private directOnlyPosition:I

.field private logos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->logos:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->checkedPositionList:Ljava/util/List;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->directOnlyPosition:I

    .line 49
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->context:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private getIcon(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "skyblue_logo_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 193
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getName(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 198
    const-string v0, ""

    .line 210
    :goto_0
    return-object v0

    .line 201
    :cond_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    .line 202
    if-nez v0, :cond_1

    .line 203
    const-string v0, ""

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 207
    if-lez v0, :cond_2

    .line 208
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 210
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCheckedItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    iget v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->directOnlyPosition:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 178
    iget v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->directOnlyPosition:I

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 187
    :goto_0
    return-object v0

    .line 183
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->checkedPositionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 184
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 185
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 187
    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->logos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->logos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 64
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 70
    if-nez p2, :cond_1

    .line 71
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->context:Landroid/content/Context;

    const-string v2, "skyblue_share_platform_list_item"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 72
    new-instance v1, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;

    invoke-direct {v1}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;-><init>()V

    .line 73
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->context:Landroid/content/Context;

    const-string v2, "checkedImageView"

    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/a/a;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;->checkedImageView:Landroid/widget/ImageView;

    .line 74
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->context:Landroid/content/Context;

    const-string v2, "logoImageView"

    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/a/a;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;->logoImageView:Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->context:Landroid/content/Context;

    const-string v2, "nameTextView"

    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/a/a;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    .line 76
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 83
    :goto_0
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 85
    instance-of v0, v1, Lcn/sharesdk/framework/Platform;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcn/sharesdk/framework/Platform;

    invoke-static {v0}, Lcn/sharesdk/onekeyshare/ShareCore;->isDirectShare(Lcn/sharesdk/framework/Platform;)Z

    move-result v0

    .line 86
    :goto_1
    iget v5, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->directOnlyPosition:I

    if-ne v5, v6, :cond_4

    .line 87
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->checkedPositionList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v0, :cond_3

    .line 92
    :cond_0
    :goto_2
    instance-of v0, v1, Lcn/sharesdk/framework/Platform;

    if-eqz v0, :cond_6

    move-object v0, v1

    .line 93
    check-cast v0, Lcn/sharesdk/framework/Platform;

    if-eqz v3, :cond_5

    const-string v3, ""

    :goto_3
    invoke-direct {p0, v0, v3}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->getIcon(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 94
    check-cast v1, Lcn/sharesdk/framework/Platform;

    invoke-direct {p0, v1}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->getName(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v1, v3

    .line 104
    :goto_4
    iget v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->directOnlyPosition:I

    if-eq v3, v6, :cond_8

    iget v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->directOnlyPosition:I

    if-eq v3, p1, :cond_8

    const-string v3, "skyblue_platform_checked_disabled"

    .line 105
    :goto_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;->position:Ljava/lang/Integer;

    .line 106
    iget-object v5, v2, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;->checkedImageView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->context:Landroid/content/Context;

    invoke-static {v7, v3}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v6, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    iget-object v3, v2, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;->checkedImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->checkedPositionList:Ljava/util/List;

    iget-object v6, v2, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;->position:Ljava/lang/Integer;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :goto_6
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object v3, v2, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, v2, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;->logoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    return-object p2

    .line 78
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;

    move-object v2, v0

    goto :goto_0

    :cond_2
    move v0, v3

    .line 85
    goto :goto_1

    :cond_3
    move v3, v4

    .line 87
    goto :goto_2

    .line 89
    :cond_4
    iget v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->directOnlyPosition:I

    if-ne p1, v0, :cond_0

    move v3, v4

    goto :goto_2

    .line 93
    :cond_5
    const-string v3, "_checked"

    goto :goto_3

    .line 97
    :cond_6
    check-cast v1, Lcn/sharesdk/onekeyshare/CustomerLogo;

    .line 98
    if-eqz v3, :cond_7

    iget-object v0, v1, Lcn/sharesdk/onekeyshare/CustomerLogo;->disableLogo:Landroid/graphics/Bitmap;

    .line 99
    :goto_7
    iget-object v1, v1, Lcn/sharesdk/onekeyshare/CustomerLogo;->label:Ljava/lang/String;

    .line 100
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4

    .line 98
    :cond_7
    iget-object v0, v1, Lcn/sharesdk/onekeyshare/CustomerLogo;->enableLogo:Landroid/graphics/Bitmap;

    goto :goto_7

    .line 104
    :cond_8
    const-string v3, "skyblue_platform_checked"

    goto :goto_5

    .line 107
    :cond_9
    const/16 v4, 0x8

    goto :goto_6
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;

    .line 117
    iget-object v1, v0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;->position:Ljava/lang/Integer;

    .line 119
    iget v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->directOnlyPosition:I

    if-eq v0, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->directOnlyPosition:I

    if-eq v0, v2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 125
    instance-of v2, v0, Lcn/sharesdk/framework/Platform;

    if-eqz v2, :cond_4

    .line 126
    check-cast v0, Lcn/sharesdk/framework/Platform;

    invoke-static {v0}, Lcn/sharesdk/onekeyshare/ShareCore;->isDirectShare(Lcn/sharesdk/framework/Platform;)Z

    move-result v0

    .line 132
    :goto_1
    if-eqz v0, :cond_2

    iget v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->directOnlyPosition:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->checkedPositionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    :cond_2
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->checkedPositionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 136
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->checkedPositionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 137
    if-eqz v0, :cond_3

    .line 138
    iput v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->directOnlyPosition:I

    .line 145
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 129
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 140
    :cond_5
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->checkedPositionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    if-eqz v0, :cond_3

    .line 142
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->directOnlyPosition:I

    goto :goto_2
.end method

.method public setCustomerLogos(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/CustomerLogo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->logos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public setData([Lcn/sharesdk/framework/Platform;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcn/sharesdk/framework/Platform;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 151
    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    array-length v2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    .line 154
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 157
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 160
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->logos:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 164
    :goto_2
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->checkedPositionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 165
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 162
    :cond_3
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->logos:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method
