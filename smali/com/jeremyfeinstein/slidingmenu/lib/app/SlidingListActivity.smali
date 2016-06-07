.class public Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;
.super Landroid/app/ListActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/jeremyfeinstein/slidingmenu/lib/app/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->a:Lcom/jeremyfeinstein/slidingmenu/lib/app/a;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/app/a;->a(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/app/a;

    invoke-direct {v0, p0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->a:Lcom/jeremyfeinstein/slidingmenu/lib/app/a;

    .line 23
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->a:Lcom/jeremyfeinstein/slidingmenu/lib/app/a;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/a;->a()V

    .line 24
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 25
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setId(I)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->setContentView(Landroid/view/View;)V

    .line 27
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->a:Lcom/jeremyfeinstein/slidingmenu/lib/app/a;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/app/a;->b(I)Z

    move-result v0

    .line 153
    if-eqz v0, :cond_0

    .line 154
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 35
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->a:Lcom/jeremyfeinstein/slidingmenu/lib/app/a;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/app/a;->a(Landroid/os/Bundle;)V

    .line 36
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 55
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->a:Lcom/jeremyfeinstein/slidingmenu/lib/app/a;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/app/a;->b(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method public setBehindContentView(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 94
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1101
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->a:Lcom/jeremyfeinstein/slidingmenu/lib/app/a;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/app/a;->b(Landroid/view/View;)V

    .line 95
    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->setContentView(Landroid/view/View;)V

    .line 64
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 71
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->a:Lcom/jeremyfeinstein/slidingmenu/lib/app/a;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/app/a;->a(Landroid/view/View;)V

    .line 81
    return-void
.end method
