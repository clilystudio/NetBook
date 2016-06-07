.class final Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field id:I

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field text:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    .line 17
    return-void
.end method


# virtual methods
.method final findItemById(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 37
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 51
    :goto_0
    return-object v0

    .line 41
    :cond_0
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 51
    goto :goto_0

    .line 41
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    .line 42
    if-eqz v0, :cond_1

    .line 46
    iget v3, v0, Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;->id:I

    if-ne v3, p1, :cond_1

    goto :goto_0
.end method

.method final getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method final getItem(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    return-object v0
.end method

.method final setItem(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;)V
    .locals 2

    .prologue
    .line 20
    if-nez p1, :cond_0

    .line 34
    :goto_0
    return-void

    .line 24
    :cond_0
    iget v0, p1, Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;->id:I

    invoke-virtual {p0, v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->findItemById(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    move-result-object v0

    .line 25
    iget v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->id:I

    iput v1, p1, Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;->group:I

    .line 26
    if-nez v0, :cond_1

    .line 27
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    :cond_1
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 31
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 32
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method
