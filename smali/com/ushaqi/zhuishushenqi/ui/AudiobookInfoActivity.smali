.class public Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ushaqi/zhuishushenqi/widget/ad;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Lcom/ushaqi/zhuishushenqi/widget/LinearListView;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;

.field private r:Lcom/ushaqi/zhuishushenqi/util/as;

.field private s:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Z

.field private z:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 68
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->m:Z

    .line 69
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->n:Z

    .line 70
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->o:Z

    .line 72
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->p:Z

    .line 79
    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->t:I

    .line 80
    const/16 v0, 0x64

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->u:I

    .line 82
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->w:I

    .line 84
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->x:I

    .line 85
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->y:Z

    .line 499
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/F;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/F;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->z:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    return-void
.end method

.method public static a(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "ALBUM_ID"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;)Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->q:Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;

    return-object p1
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 458
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->u:I

    div-int v0, p1, v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->u:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->t:I

    .line 459
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->t:I

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->u:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/widget/LinearListView;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/widget/LinearListView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 460
    :goto_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->r:Lcom/ushaqi/zhuishushenqi/util/as;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/widget/LinearListView;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->a()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->t:I

    invoke-interface {v2, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->t:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v0, v2}, Lcom/ushaqi/zhuishushenqi/util/as;->a(Ljava/util/List;I)V

    .line 461
    return-void

    .line 459
    :cond_0
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->t:I

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->u:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 310
    new-instance v0, Lcom/koushikdutta/async/http/a;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 311
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a;->b()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0d0002

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a;->a()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 312
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/E;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/E;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/a;->a(Landroid/support/v7/widget/m;)V

    .line 344
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a;->c()V

    .line 345
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 45
    .line 2400
    packed-switch p1, :pswitch_data_0

    .line 2410
    :goto_0
    return-void

    .line 2402
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2403
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2404
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2407
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2408
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2409
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2412
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2413
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2414
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2400
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 434
    if-eqz p1, :cond_0

    .line 435
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->i:Landroid/widget/RelativeLayout;

    const v1, 0x7f0200f4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 436
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 438
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->g:Landroid/widget/ImageView;

    const v1, 0x7f02019f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 446
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->i:Landroid/widget/RelativeLayout;

    const v1, 0x7f010003

    invoke-static {p0, v1}, Landroid/support/design/widget/am;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 441
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->f:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 443
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->g:Landroid/widget/ImageView;

    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->v:I

    return p1
.end method

.method private b()V
    .locals 5

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ALBUM_ID"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 203
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 204
    const-string v3, "ids"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/C;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/C;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)V

    invoke-static {v2, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getBatch(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 225
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->n:Z

    return p1
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->x:I

    return p1
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->q:Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->a(Z)V

    return-void
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)V
    .locals 4

    .prologue
    .line 45
    .line 3271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3272
    const-string v1, "album_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->q:Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3273
    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->m:Z

    if-eqz v1, :cond_0

    .line 3274
    const-string v1, "sort"

    const-string v2, "asc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3278
    :goto_0
    const-string v1, "page"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->w:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3229
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/D;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/D;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)V

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getTracks(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 45
    return-void

    .line 3276
    :cond_0
    const-string v1, "sort"

    const-string v2, "desc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;Z)Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->p:Z

    return v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 45
    .line 4127
    const v0, 0x7f0c01a2

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    .line 4128
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->q:Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->getUrl()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020106

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageUrl(Ljava/lang/String;I)V

    .line 4130
    const v0, 0x7f0c01a3

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4131
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->q:Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4133
    const v0, 0x7f0c01a5

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4134
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->q:Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->getAnnouncer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4136
    const v0, 0x7f0c01ad

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4137
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501a2

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->q:Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->getTotalCount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4139
    const v0, 0x7f0c01af

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->e:Landroid/widget/TextView;

    .line 4140
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4142
    const v0, 0x7f0c01ae

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->h:Landroid/widget/ImageView;

    .line 4143
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4145
    const v0, 0x7f0c01ab

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->f:Landroid/widget/TextView;

    .line 4146
    const v0, 0x7f0c01aa

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->g:Landroid/widget/ImageView;

    .line 4148
    const v0, 0x7f0c01ac

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4149
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->q:Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->getIntro()Ljava/lang/String;

    move-result-object v1

    .line 4150
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 4151
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4152
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/A;

    invoke-direct {v1, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/A;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 4177
    :goto_0
    const v0, 0x7f0c01a9

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->i:Landroid/widget/RelativeLayout;

    .line 4178
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4180
    const v0, 0x7f0c01a6

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->j:Landroid/widget/RelativeLayout;

    .line 4181
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4183
    const v0, 0x7f0c01b0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/widget/LinearListView;

    .line 4184
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/widget/LinearListView;

    invoke-virtual {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->setPlayTrackInterface(Lcom/ushaqi/zhuishushenqi/widget/ad;)V

    .line 4186
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/widget/LinearListView;

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {p0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->setItemHeight(I)V

    .line 4189
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->q:Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->find(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    move-result-object v0

    .line 4190
    if-nez v0, :cond_1

    .line 4191
    iput-boolean v6, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->o:Z

    .line 4197
    :goto_1
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->g()V

    .line 45
    return-void

    .line 4174
    :cond_0
    const-string v1, "\u6682\u65e0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4193
    :cond_1
    iput-boolean v7, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->o:Z

    .line 4194
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->getTrack()I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->x:I

    goto :goto_1
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->m:Z

    return p1
.end method

.method private f()Lcom/ushaqi/zhuishushenqi/db/AudioRecord;
    .locals 4

    .prologue
    .line 366
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;-><init>()V

    .line 367
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->q:Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->setBookId(Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->q:Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->setName(Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->q:Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->getLastTrackTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->setDesc(Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->q:Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->setImgUrl(Ljava/lang/String;)V

    .line 372
    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->m:Z

    if-eqz v1, :cond_0

    .line 373
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->x:I

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->setTrack(I)V

    .line 378
    :goto_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->q:Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->getUpdateAt()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->setLastUpdate(J)V

    .line 379
    return-object v0

    .line 375
    :cond_0
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->v:I

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->x:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->setTrack(I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->m:Z

    return v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;Z)Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->y:Z

    return v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->w:I

    return v0
.end method

.method private g()V
    .locals 6

    .prologue
    .line 384
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v1

    .line 385
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v2

    .line 386
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v3

    .line 387
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v4

    .line 388
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->j:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->o:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0200cf

    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 390
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 392
    const v0, 0x7f0c01a8

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 393
    const v1, 0x7f0c01a7

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 394
    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->o:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0500da

    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->o:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0200d2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 396
    return-void

    .line 388
    :cond_0
    const v0, 0x7f010003

    .line 389
    invoke-static {p0, v0}, Landroid/support/design/widget/am;->b(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 394
    :cond_1
    const v2, 0x7f0500d8

    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 395
    :cond_2
    const v0, 0x7f0200ce

    goto :goto_2
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Lcom/ushaqi/zhuishushenqi/widget/LinearListView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/widget/LinearListView;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 486
    new-instance v0, Lcom/ushaqi/zhuishushenqi/event/F;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->q:Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->getId()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->i()I

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Lcom/ushaqi/zhuishushenqi/event/F;-><init>(JI)V

    .line 487
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 488
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->q:Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->i()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->updateTrack(Ljava/lang/String;I)V

    .line 489
    return-void
.end method

.method private i()I
    .locals 2

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->m:Z

    if-eqz v0, :cond_0

    .line 493
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->x:I

    .line 495
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->v:I

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->x:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->u:I

    return v0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->v:I

    return v0
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->o:Z

    return v0
.end method

.method static synthetic l(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->n:Z

    return v0
.end method

.method static synthetic m(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->x:I

    return v0
.end method

.method static synthetic n(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)I
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->w:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->w:I

    return v0
.end method

.method static synthetic o(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->p:Z

    return v0
.end method

.method static synthetic q(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->y:Z

    return v0
.end method

.method static synthetic r(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->h()V

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 465
    if-eqz p2, :cond_0

    .line 467
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->y:Z

    .line 469
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/widget/LinearListView;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->x:I

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->setPlayButtonDefault(I)V

    .line 470
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->x:I

    .line 471
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/widget/LinearListView;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->x:I

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->a(IZ)V

    .line 473
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->a(I)V

    .line 475
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->h()V

    .line 480
    :goto_0
    iput-boolean p2, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->n:Z

    .line 481
    invoke-direct {p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->a(Z)V

    .line 482
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->p:Z

    .line 483
    return-void

    .line 478
    :cond_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->h()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 301
    :goto_0
    return-void

    .line 1420
    :sswitch_0
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->n:Z

    if-eqz v0, :cond_0

    .line 1421
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->n:Z

    .line 1427
    :goto_1
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->n:Z

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->a(Z)V

    .line 1428
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->n:Z

    .line 1449
    if-eqz v0, :cond_1

    .line 1450
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->x:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->a(I)V

    .line 1454
    :goto_2
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/widget/LinearListView;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->x:I

    invoke-virtual {v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->a(IZ)V

    .line 1429
    iput-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->p:Z

    goto :goto_0

    .line 1423
    :cond_0
    iput-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->n:Z

    .line 1424
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->h()V

    .line 1425
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->y:Z

    goto :goto_1

    .line 1452
    :cond_1
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->h()V

    goto :goto_2

    .line 2350
    :sswitch_1
    new-instance v0, Lcom/ushaqi/zhuishushenqi/event/p;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/event/p;-><init>()V

    .line 2351
    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->o:Z

    if-eqz v1, :cond_2

    .line 2352
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->o:Z

    .line 2353
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/event/p;->a(I)V

    .line 2354
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->f()Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/event/p;->a(Lcom/ushaqi/zhuishushenqi/db/AudioRecord;)V

    .line 2355
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 2362
    :goto_3
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->g()V

    goto :goto_0

    .line 2357
    :cond_2
    iput-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->o:Z

    .line 2358
    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/event/p;->a(I)V

    .line 2359
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->f()Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/event/p;->a(Lcom/ushaqi/zhuishushenqi/db/AudioRecord;)V

    .line 2360
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    goto :goto_3

    .line 294
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->a(Landroid/view/View;)V

    goto :goto_0

    .line 297
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->a(Landroid/view/View;)V

    goto :goto_0

    .line 286
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c01a6 -> :sswitch_1
        0x7f0c01a9 -> :sswitch_0
        0x7f0c01ae -> :sswitch_3
        0x7f0c01af -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->setContentView(I)V

    .line 1103
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->a()Lcom/ushaqi/zhuishushenqi/util/as;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->r:Lcom/ushaqi/zhuishushenqi/util/as;

    .line 1104
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->b()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->s:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    .line 1106
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->s:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->u:I

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->setDefaultPagesize(I)V
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1111
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->z:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/as;->a(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;)V

    .line 1113
    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->a:Landroid/view/View;

    .line 1114
    const v0, 0x7f0c00dd

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->b:Landroid/view/View;

    .line 1115
    const v0, 0x7f0c00de

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->c:Landroid/view/View;

    .line 1116
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->c:Landroid/view/View;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/z;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/z;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->b()V

    .line 99
    return-void

    .line 1107
    :catch_0
    move-exception v0

    .line 1108
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;->z:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/as;->b(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;)V

    .line 306
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onDestroy()V

    .line 307
    return-void
.end method
