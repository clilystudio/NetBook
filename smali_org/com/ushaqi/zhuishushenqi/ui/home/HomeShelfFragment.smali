.class public Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;
.super Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:J

.field private C:Landroid/widget/AdapterView$OnItemClickListener;

.field private D:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private E:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

.field private b:Z

.field private c:Landroid/view/View;

.field private d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;

.field private j:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

.field private k:I

.field private l:Landroid/widget/RelativeLayout;

.field private m:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/ImageView;

.field private q:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

.field private r:Lcom/ximalaya/ting/android/opensdk/model/album/Album;

.field private s:I

.field private t:I

.field private u:Lcom/ushaqi/zhuishushenqi/util/as;

.field private v:I

.field private w:Landroid/widget/RelativeLayout;

.field private x:Landroid/widget/Button;

.field private y:Landroid/widget/Button;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const-class v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment;-><init>()V

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->b:Z

    .line 148
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->k:I

    .line 164
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->a()Lcom/ushaqi/zhuishushenqi/util/as;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->u:Lcom/ushaqi/zhuishushenqi/util/as;

    .line 166
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->v:I

    .line 171
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->z:Z

    .line 172
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->A:Z

    .line 654
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->B:J

    .line 1307
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/home/p;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/p;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->C:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1388
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/home/q;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/q;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->D:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 1922
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/home/x;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/x;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->E:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/BookShelf;I)J
    .locals 2

    .prologue
    .line 129
    .line 15967
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 15968
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getBookFeed()Lcom/ushaqi/zhuishushenqi/model/BookFeed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookFeed;->getLastActionTime()J

    move-result-wide v0

    .line 15971
    :goto_0
    return-wide v0

    .line 15970
    :cond_0
    if-nez p2, :cond_1

    .line 15971
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getLastUpdate()J

    move-result-wide v0

    goto :goto_0

    .line 15973
    :cond_1
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getLastRead()J

    move-result-wide v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;I)Lcom/ushaqi/zhuishushenqi/model/BookShelf;
    .locals 1

    .prologue
    .line 129
    .line 17906
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    .line 129
    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;)Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->i:Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;

    return-object p1
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 1899
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/c;->a()Lcom/ushaqi/zhuishushenqi/util/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/c;->b()V

    .line 1900
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELETE_SHELF_AD_KEY"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1901
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->k()V

    .line 1902
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "ad_delete_shelf"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1903
    return-void
.end method

.method private a(Lcom/ushaqi/zhuishushenqi/db/BookFile;)V
    .locals 2

    .prologue
    .line 1682
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/model/TxtFileObject;->delete(Lcom/ushaqi/zhuishushenqi/db/BookFile;)V

    .line 1683
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->k()V

    .line 1684
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 11693
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/home/u;

    invoke-direct {v1, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/u;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Ljava/lang/String;)V

    .line 11702
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/home/u;->start()V

    .line 1685
    return-void
.end method

.method private a(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;Z)V
    .locals 1

    .prologue
    .line 1563
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->t(Ljava/lang/String;)V

    .line 1564
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->addAccountInfo(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    .line 1565
    if-eqz p2, :cond_0

    .line 1566
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->k()V

    .line 1568
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->w(Ljava/lang/String;)V

    .line 1570
    :cond_0
    return-void
.end method

.method private a(Lcom/ushaqi/zhuishushenqi/model/BookShelf;Z)V
    .locals 3

    .prologue
    .line 1611
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getBookRecord()Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1612
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getBookRecord()Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v0

    .line 11624
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v1

    .line 11625
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->delete(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    .line 11626
    invoke-direct {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Ljava/lang/String;)V

    .line 11627
    if-eqz p2, :cond_0

    .line 11628
    invoke-direct {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->b(Ljava/lang/String;)V

    .line 11630
    :cond_0
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->isRecommended()Z

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1621
    :cond_1
    :goto_0
    return-void

    .line 1613
    :cond_2
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getTxt()Lcom/ushaqi/zhuishushenqi/db/BookFile;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1614
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getTxt()Lcom/ushaqi/zhuishushenqi/db/BookFile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/db/BookFile;)V

    goto :goto_0

    .line 1615
    :cond_3
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1616
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getAdIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(I)V

    goto :goto_0

    .line 1617
    :cond_4
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1618
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getAlbum()Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->delete()V

    .line 1619
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->k()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/db/AudioRecord;)V
    .locals 8

    .prologue
    .line 129
    .line 19475
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->convert2Album()Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->getTrack()I

    move-result v1

    .line 19479
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getId()J

    move-result-wide v4

    invoke-static {v2, v4, v5, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/content/Context;JI)V

    .line 19480
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->s:I

    .line 19513
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->E:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/util/as;->a(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;)V

    .line 19482
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g()V

    .line 19483
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getCoverUrlSmall()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getAlbumTitle()Ljava/lang/String;

    move-result-object v3

    .line 20370
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->m:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingView;

    invoke-virtual {v4, v2}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingView;->setImageUrl(Ljava/lang/String;)V

    .line 20371
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->n:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20372
    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Ljava/lang/String;)V

    .line 21086
    new-instance v3, Lcom/ushaqi/zhuishushenqi/util/h;

    invoke-direct {v3}, Lcom/ushaqi/zhuishushenqi/util/h;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/ushaqi/zhuishushenqi/util/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 19484
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->r:Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    .line 19485
    div-int/lit8 v2, v1, 0x64

    iput v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->t:I

    .line 19486
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 19487
    const-string v3, "album_id"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19488
    const-string v0, "sort"

    const-string v3, "asc"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19489
    const-string v0, "page"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->t:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19492
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->q:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->setDefaultPagesize(I)V
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19497
    :goto_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/home/D;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/D;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;I)V

    invoke-static {v2, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getTracks(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 129
    return-void

    .line 19493
    :catch_0
    move-exception v0

    .line 19494
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V
    .locals 2

    .prologue
    .line 129
    .line 24530
    if-eqz p1, :cond_0

    .line 24531
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 24532
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->startActivity(Landroid/content/Intent;)V

    .line 129
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/Advert;)V
    .locals 1

    .prologue
    .line 129
    .line 18891
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/model/Advert;->setRead(Z)V

    .line 18892
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/c;->a()Lcom/ushaqi/zhuishushenqi/util/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/util/c;->a(Lcom/ushaqi/zhuishushenqi/model/Advert;)V

    .line 129
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/BookShelf;)V
    .locals 1

    .prologue
    .line 129
    .line 22607
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/model/BookShelf;Z)V

    .line 129
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/BookShelf;Z)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/model/BookShelf;Z)V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ximalaya/ting/android/opensdk/model/track/Track;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ximalaya/ting/android/opensdk/model/track/Track;)V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Ljava/util/List;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 129
    .line 12497
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030154

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 12498
    const v0, 0x7f0c0455

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 12499
    new-instance v2, Luk/me/lewisdeane/ldialogs/h;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Luk/me/lewisdeane/ldialogs/h;->a(Landroid/view/View;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v1

    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/home/t;

    invoke-direct {v3, p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/t;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Ljava/util/List;Landroid/widget/CheckBox;)V

    .line 12500
    invoke-virtual {v1, v2, v3}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    .line 12507
    invoke-virtual {v0, v1, v4}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 129
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Ljava/util/List;Ljava/util/List;)V
    .locals 16

    .prologue
    .line 129
    .line 17246
    const/4 v5, 0x0

    .line 17247
    const/4 v6, 0x0

    .line 17248
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "feed_chapter_count"

    const/16 v4, 0x32

    invoke-static {v2, v3, v4}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    .line 17249
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    .line 17250
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    .line 17251
    if-gt v2, v3, :cond_0

    move v4, v2

    .line 17254
    :goto_0
    const/4 v2, 0x0

    move v7, v2

    :goto_1
    if-ge v7, v4, :cond_3

    .line 17255
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    .line 17256
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushaqi/zhuishushenqi/model/BookUpdate;

    .line 17257
    if-eqz v3, :cond_8

    if-eqz v2, :cond_8

    .line 17260
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/BookUpdate;->getChaptersCount()I

    move-result v10

    .line 17261
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getUpdated()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/BookUpdate;->getUpdated()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    cmp-long v8, v12, v14

    if-gez v8, :cond_1

    const/4 v8, 0x1

    .line 17262
    :goto_2
    if-eqz v8, :cond_7

    .line 17263
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/BookUpdate;->getUpdated()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setUpdated(Ljava/util/Date;)V

    .line 17264
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/BookUpdate;->getLastChapter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setLastChapter(Ljava/lang/String;)V

    .line 17265
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setUnread(Z)V

    .line 17266
    invoke-virtual {v3, v10}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setChapterCount(I)V

    .line 17267
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->save()Ljava/lang/Long;

    .line 17268
    const/4 v2, 0x1

    .line 17270
    :goto_3
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->isFeeding()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 17272
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->isFeedFat()Z

    move-result v8

    .line 17273
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getChapterCountAtFeed()I

    move-result v5

    sub-int v5, v10, v5

    if-lt v5, v9, :cond_2

    const/4 v5, 0x1

    .line 17274
    :goto_4
    if-eq v8, v5, :cond_6

    .line 17275
    invoke-virtual {v3, v5}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setFeedFat(Z)V

    .line 17276
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->save()Ljava/lang/Long;

    .line 17277
    const/4 v3, 0x1

    move v5, v2

    move v2, v3

    .line 17254
    :goto_5
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move v6, v2

    goto :goto_1

    :cond_0
    move v4, v3

    .line 17251
    goto :goto_0

    .line 17261
    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    .line 17273
    :cond_2
    const/4 v5, 0x0

    goto :goto_4

    .line 17281
    :cond_3
    if-eqz v5, :cond_4

    .line 17282
    invoke-direct/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->k()V

    .line 17283
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f050161

    invoke-static {v2, v3}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    .line 17285
    :goto_6
    return-void

    .line 17284
    :cond_4
    if-eqz v6, :cond_5

    .line 17285
    invoke-direct/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->k()V

    goto :goto_6

    .line 17287
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->notifyDataSetChanged()V

    .line 17288
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f050162

    invoke-static {v2, v3}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_6

    :cond_6
    move v5, v2

    move v2, v6

    goto :goto_5

    :cond_7
    move v2, v5

    goto :goto_3

    :cond_8
    move v2, v6

    goto :goto_5
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Ljava/util/List;Z)V
    .locals 5

    .prologue
    .line 129
    .line 26634
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    .line 26635
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getBookRecord()Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 26636
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getBookRecord()Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v2

    .line 26654
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v3

    .line 26655
    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->delete(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    .line 26656
    invoke-static {v3}, Lcom/arcsoft/hpay100/a/a;->t(Ljava/lang/String;)V

    .line 26657
    if-eqz p2, :cond_1

    .line 26658
    invoke-direct {p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->b(Ljava/lang/String;)V

    .line 26660
    :cond_1
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->isRecommended()Z

    move-result v2

    invoke-direct {p0, v3, v4, v2}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 26637
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getBookRecord()Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 26638
    :cond_2
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getTxt()Lcom/ushaqi/zhuishushenqi/db/BookFile;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 26639
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getTxt()Lcom/ushaqi/zhuishushenqi/db/BookFile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/db/BookFile;)V

    goto :goto_0

    .line 26640
    :cond_3
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 26641
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getAdIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(I)V

    goto :goto_0

    .line 26642
    :cond_4
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 26643
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getAlbum()Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->delete()V

    .line 26644
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->k()V

    goto :goto_0

    .line 26648
    :cond_5
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->k()V

    .line 26649
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/BookShelfRefreshEvent;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/BookShelfRefreshEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Z)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;[Ljava/lang/CharSequence;Lcom/ushaqi/zhuishushenqi/model/BookShelf;)V
    .locals 2

    .prologue
    .line 129
    .line 21425
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 21426
    :cond_0
    :goto_0
    return-void

    .line 21428
    :cond_1
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 22036
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 21428
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/home/r;

    invoke-direct {v1, p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/home/r;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/BookShelf;)V

    .line 21429
    invoke-virtual {v0, p1, v1}, Luk/me/lewisdeane/ldialogs/h;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 21479
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private a(Lcom/ximalaya/ting/android/opensdk/model/track/Track;)V
    .locals 2

    .prologue
    .line 377
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getAlbum()Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->getAlbumTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->getAlbumTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    :goto_0
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getCoverUrlSmall()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->m:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingView;

    const v1, 0x7f020107

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingView;->setImageResource(I)V

    .line 391
    :goto_1
    return-void

    .line 382
    :cond_0
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->m:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingView;

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getCoverUrlSmall()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingView;->setImageUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1671
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->k()V

    .line 1672
    invoke-static {p1}, Lcom/arcsoft/hpay100/a/a;->t(Ljava/lang/String;)V

    .line 1673
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/BookShelfRefreshEvent;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/BookShelfRefreshEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 1675
    invoke-static {p1}, Lcom/arcsoft/hpay100/a/a;->v(Ljava/lang/String;)V

    .line 1676
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 1664
    if-eqz p3, :cond_0

    .line 1665
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "book_recommend_delete_click"

    invoke-static {v0, v1, p2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->p(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/a/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1668
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookShelf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 810
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->c(Ljava/util/List;I)V

    .line 812
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->F(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/c;->a()Lcom/ushaqi/zhuishushenqi/util/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/c;->c()V

    .line 814
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->c(Ljava/util/List;I)V

    .line 817
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;ILcom/ushaqi/zhuishushenqi/model/Advert;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookShelf;",
            ">;I",
            "Lcom/ushaqi/zhuishushenqi/model/Advert;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1040
    invoke-static {p1, p2}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->b(Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1041
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    .line 1042
    invoke-virtual {v0, p3}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->setAdvert(Lcom/ushaqi/zhuishushenqi/model/Advert;)V

    .line 1043
    invoke-virtual {v0, p2}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->setAdIndex(I)V

    .line 1044
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->notifyDataSetChanged()V

    .line 1053
    :cond_0
    :goto_0
    if-lez p2, :cond_2

    const-string v0, "shelf_five"

    :goto_1
    invoke-virtual {p3, v0}, Lcom/ushaqi/zhuishushenqi/model/Advert;->setPosition(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ushaqi/zhuishushenqi/model/Advert;->recordShow(Landroid/content/Context;)V

    .line 1056
    return-void

    .line 1045
    :cond_1
    invoke-static {p1, p2}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;-><init>()V

    .line 1047
    invoke-virtual {v0, p3}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->setAdvert(Lcom/ushaqi/zhuishushenqi/model/Advert;)V

    .line 1048
    invoke-virtual {v0, p2}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->setAdIndex(I)V

    .line 1049
    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1050
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1053
    :cond_2
    const-string v0, "shelf_top"

    goto :goto_1
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookShelf;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 996
    new-instance v4, Lcom/ushaqi/zhuishushenqi/model/BookFeed;

    invoke-direct {v4}, Lcom/ushaqi/zhuishushenqi/model/BookFeed;-><init>()V

    .line 997
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAllFeedFat()Ljava/util/List;

    move-result-object v5

    .line 999
    const-wide/16 v0, 0x0

    .line 1000
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    .line 1001
    iget-wide v8, v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->lastActionTime:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-eqz v1, :cond_3

    .line 1002
    iget-wide v0, v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->lastActionTime:J

    .line 1003
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-nez v7, :cond_0

    move-wide v2, v0

    .line 1004
    goto :goto_0

    .line 1005
    :cond_0
    cmp-long v7, v2, v0

    if-gez v7, :cond_3

    :goto_1
    move-wide v2, v0

    .line 1009
    goto :goto_0

    .line 1012
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1013
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/ushaqi/zhuishushenqi/model/BookFeed;->setFat(Z)V

    .line 1014
    const v0, 0x7f050189

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ushaqi/zhuishushenqi/model/BookFeed;->setTitle(Ljava/lang/String;)V

    .line 1019
    :goto_2
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;-><init>()V

    .line 1020
    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->setBookFeed(Lcom/ushaqi/zhuishushenqi/model/BookFeed;)V

    .line 1021
    invoke-virtual {v4, v2, v3}, Lcom/ushaqi/zhuishushenqi/model/BookFeed;->setLastActionTime(J)V

    .line 1022
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1023
    return-void

    .line 1016
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/ushaqi/zhuishushenqi/model/BookFeed;->setFat(Z)V

    .line 1017
    const v0, 0x7f050188

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v0, 0x0

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ushaqi/zhuishushenqi/model/BookFeed;->setTitle(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-wide v0, v2

    goto :goto_1
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 466
    if-eqz p1, :cond_0

    .line 467
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->p:Landroid/widget/ImageView;

    const v1, 0x7f020050

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 471
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->p:Landroid/widget/ImageView;

    const v1, 0x7f0201a5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;I)Z
    .locals 4

    .prologue
    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE_SHELF_AD_KEY"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 942
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookShelf;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 827
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    move v0, v1

    .line 846
    :goto_0
    return v0

    .line 831
    :cond_0
    if-nez p1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getType()I

    move-result v0

    if-eq v0, v2, :cond_1

    move v0, v2

    .line 832
    goto :goto_0

    .line 835
    :cond_1
    if-lez p1, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_2

    .line 836
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 837
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getType()I

    move-result v0

    if-eq v0, v2, :cond_2

    move v0, v2

    .line 838
    goto :goto_0

    .line 841
    :cond_2
    if-lez p1, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v4, :cond_3

    .line 842
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getType()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 843
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getType()I

    move-result v0

    if-eq v0, v2, :cond_3

    move v0, v2

    .line 844
    goto :goto_0

    :cond_3
    move v0, v1

    .line 846
    goto :goto_0
.end method

.method private static b(Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookShelf;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1062
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/model/TxtFileObject;->getTxtFiles()Ljava/util/List;

    move-result-object v0

    .line 1063
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1115
    :cond_0
    :goto_0
    return v3

    .line 1066
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1067
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookFile;

    .line 1069
    new-instance v5, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-direct {v5}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;-><init>()V

    .line 1070
    invoke-virtual {v5, v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->setTxt(Lcom/ushaqi/zhuishushenqi/db/BookFile;)V

    .line 1071
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->isTop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1072
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1074
    :cond_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1078
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    .line 1079
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getTxt()Lcom/ushaqi/zhuishushenqi/db/BookFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->getUpdated()Ljava/util/Date;

    move-result-object v6

    .line 1081
    if-nez v6, :cond_5

    .line 1082
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move v2, v3

    .line 1086
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_b

    .line 1087
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    .line 1088
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getBookRecord()Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v7

    .line 1089
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->isTop()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1092
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getType()I

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getType()I

    move-result v0

    const/4 v8, 0x2

    if-ne v0, v8, :cond_7

    .line 1093
    :cond_6
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getUpdated()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-lez v0, :cond_7

    .line 1094
    invoke-interface {p0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1095
    const/4 v0, 0x1

    .line 1099
    :goto_4
    if-nez v0, :cond_4

    .line 1100
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1086
    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 1105
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    .line 1106
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getType()I

    move-result v2

    if-nez v2, :cond_9

    .line 1107
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->isTop()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1108
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1114
    :cond_a
    invoke-interface {p0, v3, v4}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1115
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    goto/16 :goto_0

    :cond_b
    move v0, v3

    goto :goto_4
.end method

.method public static b()Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;
    .locals 1

    .prologue
    .line 177
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;-><init>()V

    return-object v0
.end method

.method private b(I)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1910
    packed-switch p1, :pswitch_data_0

    .line 1920
    :goto_0
    :pswitch_0
    return-void

    .line 1912
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1913
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 1916
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1917
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 1910
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V
    .locals 1

    .prologue
    .line 129
    .line 13457
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13458
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->h()V

    :goto_0
    return-void

    .line 13460
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->u:Lcom/ushaqi/zhuishushenqi/util/as;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/as;->d()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;I)V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/db/AudioRecord;)V
    .locals 4

    .prologue
    .line 129
    .line 26516
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26517
    const-string v1, "ALBUM_ID"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 26518
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 129
    .line 24545
    if-eqz p1, :cond_2

    .line 24549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 24550
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "FeedUpdateTime"

    invoke-static {v2, v3, v0, v1}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;J)V

    .line 24552
    invoke-virtual {p1, v4}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setFeeding(Z)V

    .line 24553
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getChapterCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setChapterCountAtFeed(I)V

    .line 24554
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setLastActionTime(J)V

    .line 24555
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->save()Ljava/lang/Long;

    .line 24557
    invoke-direct {p0, p1, v4}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;Z)V

    .line 24573
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "feed_intro_dialog"

    invoke-static {v0, v1, v4}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 24574
    if-eqz v0, :cond_2

    .line 24575
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 25033
    if-eqz v0, :cond_1

    .line 25036
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 25037
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 25038
    const-string v2, "dialog_feed_intro"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 25039
    if-eqz v0, :cond_0

    .line 25040
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 25042
    :cond_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/DialogUtil$FeedIntroDialog;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/util/DialogUtil$FeedIntroDialog;-><init>()V

    const-string v2, "dialog_feed_intro"

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/util/DialogUtil$FeedIntroDialog;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 24576
    :cond_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "feed_intro_dialog"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 129
    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/BookShelf;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 129
    .line 23587
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getTxt()Lcom/ushaqi/zhuishushenqi/db/BookFile;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 23588
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getTxt()Lcom/ushaqi/zhuishushenqi/db/BookFile;

    move-result-object v2

    .line 23589
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->isTop()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->setTop(Z)V

    .line 23590
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->save()Ljava/lang/Long;

    .line 23600
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->k()V

    .line 129
    return-void

    :cond_1
    move v0, v1

    .line 23589
    goto :goto_0

    .line 23591
    :cond_2
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getBookRecord()Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 23592
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getBookRecord()Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v2

    .line 23593
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->isTop()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setTop(Z)V

    .line 23594
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->save()Ljava/lang/Long;

    goto :goto_1

    :cond_3
    move v0, v1

    .line 23593
    goto :goto_2

    .line 23595
    :cond_4
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getAlbum()Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 23596
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getAlbum()Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    move-result-object v2

    .line 23597
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->isTop()Z

    move-result v3

    if-nez v3, :cond_5

    :goto_3
    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->setTop(Z)V

    .line 23598
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->save()Ljava/lang/Long;

    goto :goto_1

    :cond_5
    move v0, v1

    .line 23597
    goto :goto_3
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;)V
    .locals 5

    .prologue
    .line 129
    .line 26846
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->f()Ljava/util/List;

    move-result-object v0

    .line 26847
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26856
    :cond_0
    :goto_0
    return-void

    .line 26852
    :cond_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->r(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->postLink:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->postLink:Ljava/lang/String;

    const-string v1, "link"

    .line 26853
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->postLink:Ljava/lang/String;

    const-string v1, "game"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26855
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_0

    .line 26858
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 26859
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 26860
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26861
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g:Landroid/view/View;

    const v1, 0x7f0c0048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 26862
    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/a/a;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/util/a/a;-><init>()V

    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->postLink:Ljava/lang/String;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/util/a/a;->a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/InsideLink;

    move-result-object v1

    .line 26863
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/InsideLink;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26864
    iget-boolean v2, p1, Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->highlight:Z

    if-eqz v2, :cond_4

    .line 26865
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26870
    :goto_1
    new-instance v2, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget-object v4, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;->Notification:Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

    invoke-direct {v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer;-><init>(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;)V

    iget-object v3, p1, Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer;->a(Ljava/lang/String;)V

    .line 26871
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/home/w;

    invoke-direct {v2, p0, p1, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/w;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;Lcom/ushaqi/zhuishushenqi/model/InsideLink;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 26867
    :cond_4
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1709
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/home/v;

    invoke-direct {v0, p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/home/v;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Ljava/lang/String;)V

    .line 1715
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/v;->start()V

    .line 1716
    return-void
.end method

.method private static b(Ljava/util/List;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookShelf;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 857
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    move v0, v1

    .line 876
    :goto_0
    return v0

    .line 861
    :cond_0
    if-nez p1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getType()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    .line 862
    goto :goto_0

    .line 865
    :cond_1
    if-lez p1, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_2

    .line 866
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 867
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getType()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    .line 868
    goto :goto_0

    .line 871
    :cond_2
    if-lez p1, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v4, :cond_3

    .line 872
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getType()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 873
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getType()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    .line 874
    goto :goto_0

    :cond_3
    move v0, v1

    .line 876
    goto :goto_0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 129
    .line 14432
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14433
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->r:Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    if-eqz v1, :cond_1

    .line 14434
    const-string v1, "ALBUM_ID"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->r:Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 14435
    const-string v1, "INDEX_OF_PLAYLIST"

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->s:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14436
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "album_id"

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->r:Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    invoke-virtual {v3}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getId()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 14437
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "index_of_playlist"

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->s:I

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 14447
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->startActivity(Landroid/content/Intent;)V

    .line 129
    :cond_0
    return-void

    .line 14439
    :cond_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "album_id"

    invoke-static {v1, v2, v4, v5}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 14440
    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 14443
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v4, "index_of_playlist"

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 14444
    const-string v4, "ALBUM_ID"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 14445
    const-string v2, "INDEX_OF_PLAYLIST"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V
    .locals 2

    .prologue
    .line 129
    .line 25537
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/dl/a;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/dl/a;-><init>(Landroid/app/Activity;)V

    .line 25538
    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/dl/a;->a(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    .line 129
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/BookShelf;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 129
    .line 26483
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030154

    invoke-virtual {v0, v2, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 26484
    const v0, 0x7f0c0455

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 26485
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getType()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 26486
    new-instance v1, Luk/me/lewisdeane/ldialogs/h;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Landroid/view/View;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v1

    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/home/s;

    invoke-direct {v3, p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/s;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/BookShelf;Landroid/widget/CheckBox;)V

    .line 26487
    invoke-virtual {v1, v2, v3}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    .line 26493
    invoke-virtual {v0, v1, v4}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 129
    return-void

    .line 26485
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private c(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookShelf;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 885
    if-nez p2, :cond_2

    const-string v0, "top"

    move-object v1, v0

    .line 886
    :goto_0
    if-nez p2, :cond_3

    const-string v0, "rate_zssq_advert_bookshelf_top"

    .line 887
    :goto_1
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/c;->a()Lcom/ushaqi/zhuishushenqi/util/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ushaqi/zhuishushenqi/util/c;->a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Advert;

    move-result-object v2

    .line 888
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/arcsoft/hpay100/a/a;->w(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 889
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 890
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;->Bookshelf:Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

    invoke-direct {v0, v1, v3}, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer;-><init>(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;)V

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Advert;->get_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer;->a(Ljava/lang/String;)V

    .line 892
    :cond_0
    const-string v0, "promotion"

    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/model/Advert;->setType(Ljava/lang/String;)V

    .line 893
    invoke-direct {p0, p1, p2, v2}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Ljava/util/List;ILcom/ushaqi/zhuishushenqi/model/Advert;)V

    .line 901
    :cond_1
    :goto_2
    return-void

    .line 885
    :cond_2
    const-string v0, "bookshelf"

    move-object v1, v0

    goto :goto_0

    .line 886
    :cond_3
    const-string v0, "rate_zssq_advert_bookshelf_five"

    goto :goto_1

    .line 894
    :cond_4
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->A(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 895
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 11033
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/adutil/k;->c()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/adutil/k;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v0, 0x1

    .line 895
    :goto_3
    if-eqz v0, :cond_1

    .line 896
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 897
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/adutil/n;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/n;-><init>()V

    .line 898
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/ushaqi/zhuishushenqi/util/adutil/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 11033
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Lcom/ushaqi/zhuishushenqi/util/as;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->u:Lcom/ushaqi/zhuishushenqi/util/as;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    .line 14719
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14720
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/home/H;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/H;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;B)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/H;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 129
    :cond_0
    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 129
    .line 15124
    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->b:Z

    if-nez v1, :cond_0

    .line 15125
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->k()V

    .line 15127
    :cond_0
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/home/K;

    invoke-direct {v1, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/K;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;B)V

    new-array v2, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/home/K;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 15129
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->findAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 15131
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->findAll()Ljava/util/List;

    move-result-object v2

    .line 15155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    .line 15156
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 15158
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15159
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15156
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 15161
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 15162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15163
    const-string v1, "ids"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15165
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/home/o;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/o;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getBatch(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 129
    :cond_2
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->l:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 396
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 397
    return-void
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V
    .locals 1

    .prologue
    .line 129
    .line 16293
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    if-eqz v0, :cond_0

    .line 16294
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n()V

    .line 129
    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g()V

    .line 452
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Z)V

    .line 453
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->e()Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ximalaya/ting/android/opensdk/model/track/Track;)V

    .line 454
    return-void
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->i()V

    return-void
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->v:I

    return v0
.end method

.method private i()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 657
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 658
    iget-wide v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->B:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 659
    iput-wide v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->B:J

    .line 678
    :goto_0
    return-void

    .line 662
    :cond_0
    iput-wide v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->B:J

    .line 663
    const/4 v0, 0x0

    .line 665
    :try_start_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 673
    :goto_1
    if-eqz v0, :cond_6

    .line 9684
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->a(Ljava/util/List;)V

    .line 9685
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9686
    invoke-direct {p0, v7}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->b(I)V

    .line 9688
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->b:Z

    if-eqz v0, :cond_1

    .line 9689
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V

    .line 9691
    :cond_1
    iput-boolean v6, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->b:Z

    .line 9692
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/home/J;

    invoke-direct {v0, p0, v6}, Lcom/ushaqi/zhuishushenqi/ui/home/J;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;B)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/J;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 666
    :catch_0
    move-exception v1

    .line 667
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "not attached to Activity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 668
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "zhuishu_catch_exception"

    const-string v3, "HomeShelfFragment_loadShelf:Fragment HomeShelfFragment not attached to Activity"

    invoke-static {v1, v2, v3}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 670
    :cond_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "zhuishu_catch_exception"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HomeShelfFragment_loadShelf:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9695
    :cond_3
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9696
    invoke-static {}, Landroid/support/design/widget/am;->g()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->A:Z

    if-nez v0, :cond_4

    .line 9697
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/support/v4/app/FragmentActivity;)V

    goto/16 :goto_0

    .line 9699
    :cond_4
    iput-boolean v7, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->z:Z

    .line 9703
    :cond_5
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->b(I)V

    goto/16 :goto_0

    .line 676
    :cond_6
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u8f7d\u5165\u4e66\u67b6\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method private j()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookShelf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 713
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 715
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "key_shelf_sort"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 716
    if-nez v7, :cond_4

    .line 717
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAllWithTopNoFeed()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 721
    :goto_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAllFeeding()Ljava/util/List;

    move-result-object v8

    .line 722
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    move v5, v0

    .line 723
    :goto_1
    const/4 v0, 0x0

    .line 724
    const-wide/16 v2, 0x0

    .line 725
    if-eqz v5, :cond_0

    .line 726
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "FeedUpdateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v2, v3, v10, v11}, Lcom/arcsoft/hpay100/a/a;->c(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 728
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v4, v0

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    .line 730
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getUpdated()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 731
    if-nez v4, :cond_1

    if-eqz v5, :cond_1

    cmp-long v10, v2, v10

    if-ltz v10, :cond_1

    .line 732
    invoke-direct {p0, v6, v8}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Ljava/util/List;Ljava/util/List;)V

    .line 733
    const/4 v4, 0x1

    .line 9981
    :cond_1
    new-instance v10, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-direct {v10}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;-><init>()V

    .line 9982
    invoke-virtual {v10, v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->setBookRecord(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    .line 9983
    iget-object v11, v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->readTime:Ljava/util/Date;

    if-eqz v11, :cond_2

    .line 9984
    iget-object v11, v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->readTime:Ljava/util/Date;

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->setLastRead(J)V

    .line 9986
    :cond_2
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getUpdated()Ljava/util/Date;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 9987
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getUpdated()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->setLastUpdate(J)V

    .line 9989
    :cond_3
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 719
    :cond_4
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAllWithTopNoFeedByRead()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 722
    :cond_5
    const/4 v0, 0x0

    move v5, v0

    goto :goto_1

    .line 739
    :cond_6
    invoke-static {v6}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->b(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->v:I

    .line 741
    if-nez v4, :cond_7

    if-eqz v5, :cond_7

    .line 742
    invoke-direct {p0, v6, v8}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Ljava/util/List;Ljava/util/List;)V

    .line 746
    :cond_7
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "delete_audio_on_shelf"

    invoke-static {v0, v2}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 747
    if-eqz v0, :cond_8

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    move v2, v0

    .line 748
    :goto_3
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->findAll()Ljava/util/List;

    move-result-object v0

    .line 749
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    .line 750
    if-eqz v2, :cond_9

    .line 751
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->delete()V

    .line 752
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->k()V

    goto :goto_4

    .line 747
    :cond_8
    const/4 v0, 0x0

    move v2, v0

    goto :goto_3

    .line 754
    :cond_9
    new-instance v4, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    invoke-direct {v4}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;-><init>()V

    .line 755
    invoke-virtual {v4, v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->setAlbum(Lcom/ushaqi/zhuishushenqi/db/AudioRecord;)V

    .line 756
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->getLastRead()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->setLastRead(J)V

    .line 757
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->getLastUpdate()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->setLastUpdate(J)V

    .line 758
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->isTop()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 759
    const/4 v0, 0x0

    invoke-interface {v6, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 761
    :cond_a
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 10950
    :cond_b
    :try_start_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/home/G;

    invoke-direct {v0, p0, v7}, Lcom/ushaqi/zhuishushenqi/ui/home/G;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;I)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    :goto_5
    :try_start_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "unsync_bookrecord_first"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_e

    .line 776
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 777
    const/4 v0, 0x0

    move v2, v0

    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 778
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 777
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    .line 769
    :catch_0
    move-exception v0

    .line 770
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "zhuishu_catch_exception"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HomeShelfFragment_createShelf:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 780
    :cond_c
    :try_start_2
    invoke-static {v3}, Lcom/arcsoft/hpay100/a/a;->a([Ljava/lang/String;)V

    .line 781
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 782
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    .line 783
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 782
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 785
    :cond_d
    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->b([Ljava/lang/String;)V

    .line 786
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "unsync_bookrecord_first"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 800
    :cond_e
    :goto_8
    invoke-direct {p0, v6}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Ljava/util/List;)V

    .line 801
    return-object v6

    .line 788
    :catch_1
    move-exception v0

    .line 789
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "zhuishu_catch_exception"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HomeShelfFragment_createShelf:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "no such table: BookSyncRecord"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 792
    :try_start_3
    new-instance v1, Lcom/activeandroid/util/SQLiteUtils;

    invoke-direct {v1}, Lcom/activeandroid/util/SQLiteUtils;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS BookSyncRecord (id integer primary key AutoIncrement,userId varchar(20),bookId varchar(20), type int,updated long);"

    invoke-static {v1}, Lcom/activeandroid/util/SQLiteUtils;->execSql(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_8

    .line 794
    :catch_2
    move-exception v1

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "zhuishu_catch_exception"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HomeShelfFragment_createTableBookSyncRecord:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method private k()V
    .locals 1

    .prologue
    .line 1299
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1300
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->i()V

    .line 1302
    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V
    .locals 3

    .prologue
    .line 129
    .line 23525
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23526
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method static synthetic l(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->k()V

    return-void
.end method

.method static synthetic m(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic n(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->i:Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;

    return-object v0
.end method

.method static synthetic o(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->h()V

    return-void
.end method

.method static synthetic p(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->o:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    const-string v0, "home_shelf"

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->a()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "home_shelf_bulk_operation"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->r:Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->l:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 278
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 280
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 281
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setPullToRefreshEnabled(Z)V

    .line 282
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setPullToRefreshOverScrollEnabled(Z)V

    .line 283
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 284
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->b()V

    .line 285
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 288
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->r:Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->l:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->r(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->i:Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->i:Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->postLink:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->i:Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->postLink:Ljava/lang/String;

    const-string v1, "link"

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->i:Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->postLink:Ljava/lang/String;

    const-string v1, "game"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 295
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->w:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 299
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setPullToRefreshEnabled(Z)V

    .line 300
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setPullToRefreshOverScrollEnabled(Z)V

    .line 301
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->D:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 302
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->c()V

    .line 303
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 519
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 521
    return-void
.end method

.method public onAudioBookExitEvent(Lcom/ushaqi/zhuishushenqi/event/b;)V
    .locals 2
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 190
    .line 2364
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Z)V

    .line 2400
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->l:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2401
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 2366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->r:Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    .line 191
    return-void
.end method

.method public onBookAdded(Lcom/ushaqi/zhuishushenqi/event/c;)V
    .locals 6
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 560
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->k()V

    .line 563
    :cond_0
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->r(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 9089
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 9090
    const-string v2, "uid"

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9091
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Lcom/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;DILjava/util/Map;)V

    .line 565
    return-void
.end method

.method public onBookRead(Lcom/ushaqi/zhuishushenqi/event/g;)V
    .locals 0
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 611
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->k()V

    .line 612
    return-void
.end method

.method public onBookRemoved(Lcom/ushaqi/zhuishushenqi/event/h;)V
    .locals 1
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 569
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Ljava/lang/String;)V

    .line 570
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment;->onCreate(Landroid/os/Bundle;)V

    .line 240
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 3246
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->q:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    if-nez v0, :cond_0

    .line 3247
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->b()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->q:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    .line 3249
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->E:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/as;->a(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;)V

    .line 242
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 307
    sget-object v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a:Ljava/lang/String;

    const-string v1, "HomeShelfFragment onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3316
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 4124
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4125
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 4126
    const/high16 v1, 0x42700000

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v2, 0x43200000

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    .line 3317
    const v0, 0x7f0300ad

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->c:Landroid/view/View;

    .line 3318
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->c:Landroid/view/View;

    const v1, 0x7f0c0240

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 3319
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    .line 3320
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 3321
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->c:Landroid/view/View;

    const v1, 0x7f0c01f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->f:Landroid/view/View;

    .line 3322
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d8

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->h:Landroid/view/View;

    .line 3323
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->c:Landroid/view/View;

    const v1, 0x7f0c01f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3324
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/home/n;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/n;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3331
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->c:Landroid/view/View;

    const v1, 0x7f0c0242

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->w:Landroid/widget/RelativeLayout;

    .line 3332
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->w:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/home/y;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/y;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3338
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->w:Landroid/widget/RelativeLayout;

    const v1, 0x7f0c002b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->x:Landroid/widget/Button;

    .line 3339
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->w:Landroid/widget/RelativeLayout;

    const v1, 0x7f0c0466

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->y:Landroid/widget/Button;

    .line 3340
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->y:Landroid/widget/Button;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/home/z;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/z;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3348
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->x:Landroid/widget/Button;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/home/A;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/A;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4615
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/home/E;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/E;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/k;)V

    .line 4632
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4633
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 4635
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03013a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4636
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 4638
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 4639
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030080

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g:Landroid/view/View;

    .line 4640
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4641
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->r(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4642
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 4644
    :cond_1
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    .line 4645
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4646
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->C:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4647
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->D:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 4648
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->x:Landroid/widget/Button;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->y:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->a(Landroid/widget/Button;Landroid/widget/Button;)V

    .line 310
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->i()V

    .line 5406
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    .line 5407
    sget-object v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5408
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->c:Landroid/view/View;

    const v1, 0x7f0c0241

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->l:Landroid/widget/RelativeLayout;

    .line 5409
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->l:Landroid/widget/RelativeLayout;

    const v1, 0x7f0c02e4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->m:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingView;

    .line 5410
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->l:Landroid/widget/RelativeLayout;

    const v1, 0x7f0c02e5

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->n:Landroid/widget/TextView;

    .line 5411
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->l:Landroid/widget/RelativeLayout;

    const v1, 0x7f0c02e6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->o:Landroid/widget/TextView;

    .line 5412
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->l:Landroid/widget/RelativeLayout;

    const v1, 0x7f0c02e7

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->p:Landroid/widget/ImageView;

    .line 5413
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->p:Landroid/widget/ImageView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/home/B;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/B;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5420
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5421
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->h()V

    .line 5423
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->l:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/home/C;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/C;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->c:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 254
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment;->onDestroy()V

    .line 255
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->E:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->E:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/as;->b(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;)V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->E:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .line 259
    :cond_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 260
    return-void
.end method

.method public onDownloadProgress(Lcom/ushaqi/zhuishushenqi/event/I;)V
    .locals 1
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 604
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->k:I

    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->notifyDataSetChanged()V

    .line 607
    :cond_0
    return-void
.end method

.method public onFeedAdded(Lcom/ushaqi/zhuishushenqi/event/l;)V
    .locals 2
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 574
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/l;->b()Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/l;->a()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;Z)V

    .line 575
    return-void
.end method

.method public onFeedRemoved(Lcom/ushaqi/zhuishushenqi/event/n;)V
    .locals 1
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->k()V

    .line 580
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->r(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->x(Ljava/lang/String;)V

    .line 583
    return-void
.end method

.method public onFeedSettingChanged(Lcom/ushaqi/zhuishushenqi/event/m;)V
    .locals 1
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 587
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V

    .line 588
    return-void
.end method

.method public onFocusBookEvent(Lcom/ushaqi/zhuishushenqi/event/p;)V
    .locals 4
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/p;->b()Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    move-result-object v0

    .line 197
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->setUpdateReaded(Z)V

    .line 198
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->setLastRead(J)V

    .line 199
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->save()Ljava/lang/Long;

    .line 203
    :goto_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->i()V

    .line 204
    return-void

    .line 201
    :cond_0
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/p;->b()Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->cancelFollow(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGenderIntroEvent(Lcom/ushaqi/zhuishushenqi/event/r;)V
    .locals 6
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 218
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/r;->a()I

    move-result v0

    .line 219
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 220
    if-nez v0, :cond_1

    .line 221
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->b(I)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    if-ne v0, v4, :cond_2

    .line 223
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/home/I;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/I;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Landroid/app/Activity;)V

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "male"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/I;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 224
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 225
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/home/I;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/I;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Landroid/app/Activity;)V

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "female"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/I;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onHideAdEvent(Lcom/ushaqi/zhuishushenqi/event/s;)V
    .locals 2
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->k()V

    .line 209
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->r(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->i:Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->i:Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->postLink:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->i:Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->postLink:Ljava/lang/String;

    const-string v1, "link"

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->i:Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->postLink:Ljava/lang/String;

    const-string v1, "game"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 214
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 537
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment;->onPause()V

    .line 7269
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->a()Z

    move-result v0

    .line 538
    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e()V

    .line 541
    :cond_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/c;->a()Lcom/ushaqi/zhuishushenqi/util/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/c;->c()V

    .line 542
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 530
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment;->onResume()V

    .line 5822
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->A(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5823
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->f()Ljava/util/List;

    move-result-object v1

    .line 5824
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 532
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->A:Z

    .line 533
    return-void

    .line 5827
    :cond_1
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/c;->a()Lcom/ushaqi/zhuishushenqi/util/c;

    move-result-object v0

    const-string v2, "top"

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/util/c;->a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Advert;

    move-result-object v2

    .line 5828
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5829
    :cond_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 6307
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/Advert;)V

    goto :goto_0

    .line 5832
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    .line 5833
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getAdvert()Lcom/ushaqi/zhuishushenqi/model/Advert;

    move-result-object v3

    if-nez v3, :cond_5

    .line 7029
    invoke-direct {p0, v1, v4, v2}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Ljava/util/List;ILcom/ushaqi/zhuishushenqi/model/Advert;)V

    .line 5839
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->notifyDataSetChanged()V

    .line 5840
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/Advert;)V

    goto :goto_0

    .line 5835
    :cond_5
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->getAdvert()Lcom/ushaqi/zhuishushenqi/model/Advert;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ushaqi/zhuishushenqi/model/Advert;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 5836
    const-string v1, "shelf_top"

    invoke-virtual {v2, v1}, Lcom/ushaqi/zhuishushenqi/model/Advert;->setPosition(Ljava/lang/String;)V

    .line 5837
    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->setAdvert(Lcom/ushaqi/zhuishushenqi/model/Advert;)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->A:Z

    .line 266
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 1146
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 1141
    iput p2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->k:I

    .line 1142
    return-void
.end method

.method public onShelfUpdated(Lcom/ushaqi/zhuishushenqi/event/A;)V
    .locals 1
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 593
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/A;->a()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->z:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->A:Z

    if-nez v0, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->k()V

    goto :goto_0
.end method

.method public onShowThirdAd(Lcom/ushaqi/zhuishushenqi/event/B;)V
    .locals 4
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 905
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 908
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/B;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "top"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 910
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/B;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bookshelf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->f()Ljava/util/List;

    move-result-object v2

    .line 914
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 917
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/B;->a()Lcom/ushaqi/zhuishushenqi/model/Advert;

    move-result-object v3

    .line 918
    if-eqz v3, :cond_0

    .line 919
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/B;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "top"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 920
    :goto_1
    const-string v1, "promotion"

    invoke-virtual {v3, v1}, Lcom/ushaqi/zhuishushenqi/model/Advert;->setType(Ljava/lang/String;)V

    .line 921
    if-nez v0, :cond_4

    const-string v1, "shelf_top"

    :goto_2
    invoke-virtual {v3, v1}, Lcom/ushaqi/zhuishushenqi/model/Advert;->setPosition(Ljava/lang/String;)V

    .line 922
    invoke-static {v2, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Ljava/util/List;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 923
    invoke-direct {p0, v2, v0, v3}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Ljava/util/List;ILcom/ushaqi/zhuishushenqi/model/Advert;)V

    .line 924
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 919
    :cond_3
    const/4 v0, 0x4

    goto :goto_1

    .line 921
    :cond_4
    const-string v1, "shelf_five"

    goto :goto_2

    .line 925
    :cond_5
    invoke-static {v2, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->b(Ljava/util/List;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    .line 927
    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->setAdvert(Lcom/ushaqi/zhuishushenqi/model/Advert;)V

    .line 928
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onUpdateAlbum(Lcom/ushaqi/zhuishushenqi/event/F;)V
    .locals 3
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->i()V

    .line 183
    sget-object v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/F;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/F;->a()J

    move-result-wide v0

    .line 2230
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->r:Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    if-nez v2, :cond_0

    .line 2231
    new-instance v2, Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    invoke-direct {v2}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;-><init>()V

    iput-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->r:Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    .line 2233
    :cond_0
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->r:Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    invoke-virtual {v2, v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->setId(J)V

    .line 185
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/F;->b()I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->s:I

    .line 186
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .prologue
    .line 546
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment;->setUserVisibleHint(Z)V

    .line 547
    if-nez p1, :cond_1

    .line 8269
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->a()Z

    move-result v0

    .line 548
    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e()V

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;->f()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Ljava/util/List;)V

    goto :goto_0
.end method
