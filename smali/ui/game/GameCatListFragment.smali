.class public Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/ushaqi/zhuishushenqi/ui/game/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;-><init>()V

    .line 129
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;)Lcom/ushaqi/zhuishushenqi/ui/game/b;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;->b:Lcom/ushaqi/zhuishushenqi/ui/game/b;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 86
    const v0, 0x7f030119

    return v0
.end method

.method protected final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;->f()V

    .line 92
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/c;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/c;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;B)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/c;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 50
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x7f010004

    aput v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    const v1, 0x7f0b005e

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 52
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;->a:Landroid/widget/ListView;

    .line 1045
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060116

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1046
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1047
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v0, v5, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1048
    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1049
    const/4 v0, 0x0

    invoke-virtual {v2, v4, v0, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 55
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/b;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/b;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;->b:Lcom/ushaqi/zhuishushenqi/ui/game/b;

    .line 56
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;->b:Lcom/ushaqi/zhuishushenqi/ui/game/b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/a;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/a;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;->b()V

    .line 70
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->onPause()V

    .line 81
    const-string v0, "game_cate"

    invoke-static {v0}, Lcom/umeng/a/b;->b(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->onResume()V

    .line 75
    const-string v0, "game_cate"

    invoke-static {v0}, Lcom/umeng/a/b;->a(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f0c010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;->a:Landroid/widget/ListView;

    .line 43
    return-void
.end method
