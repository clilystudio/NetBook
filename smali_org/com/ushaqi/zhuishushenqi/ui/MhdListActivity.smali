.class public Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Lcom/ushaqi/zhuishushenqi/adapter/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 128
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 157
    packed-switch p1, :pswitch_data_0

    .line 171
    :goto_0
    return-void

    .line 159
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 163
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 167
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 34
    .line 2093
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.comicsisland.activity"

    const-string v2, "com.android.comicsisland.activity.BookDetailActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2096
    const-string v2, "bigBookId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2097
    const-string v2, "zhuishusdk"

    const-string v3, "zhuishusdk"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2098
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2100
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2103
    :goto_0
    return-void

    .line 2102
    :catch_0
    move-exception v0

    .line 2110
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    const-string v1, "\u786e\u8ba4\u4e0b\u8f7d"

    .line 3036
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 2110
    const-string v1, "\u5373\u5c06\u5f00\u59cb\u4e0b\u8f7d\u300c\u6f2b\u753b\u5c9b\u300dAPP\uff084.0M\uff09\uff0c\u6b23\u8d4f60000+\u7cbe\u5f69\u6f2b\u753b~"

    .line 3046
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 2111
    const v1, 0x7f050103

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/bl;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/bl;-><init>(Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;)V

    .line 2112
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const v1, 0x7f050011

    const/4 v2, 0x0

    .line 2121
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 2122
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;)Lcom/ushaqi/zhuishushenqi/adapter/v;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->c:Lcom/ushaqi/zhuishushenqi/adapter/v;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->a(I)V

    .line 84
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/bm;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/bm;-><init>(Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;B)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/bm;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->setContentView(I)V

    .line 49
    const v0, 0x7f05012c

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->b(I)V

    .line 51
    const v0, 0x7f0c00ed

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 52
    const v1, 0x7f0c00ee

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->a:Landroid/view/View;

    .line 53
    const v1, 0x7f0c00ef

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->b:Landroid/view/View;

    .line 54
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->b:Landroid/view/View;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/bj;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/bj;-><init>(Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    new-instance v1, Lcom/ushaqi/zhuishushenqi/adapter/v;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/adapter/v;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->c:Lcom/ushaqi/zhuishushenqi/adapter/v;

    .line 62
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->c:Lcom/ushaqi/zhuishushenqi/adapter/v;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/bk;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/bk;-><init>(Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->b()V

    .line 1464
    const-string v0, "mhd_open"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    return-void
.end method
