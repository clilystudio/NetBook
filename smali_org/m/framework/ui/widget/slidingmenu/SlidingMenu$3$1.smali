.class Lm/framework/ui/widget/slidingmenu/SlidingMenu$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lm/framework/ui/widget/slidingmenu/SlidingMenu$3;


# direct methods
.method constructor <init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$3$1;->this$1:Lm/framework/ui/widget/slidingmenu/SlidingMenu$3;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$3$1;->this$1:Lm/framework/ui/widget/slidingmenu/SlidingMenu$3;

    # getter for: Lm/framework/ui/widget/slidingmenu/SlidingMenu$3;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;
    invoke-static {v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$3;->access$0(Lm/framework/ui/widget/slidingmenu/SlidingMenu$3;)Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->hideMenu()V

    .line 114
    return-void
.end method
