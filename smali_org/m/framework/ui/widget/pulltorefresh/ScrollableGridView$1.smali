.class Lm/framework/ui/widget/pulltorefresh/ScrollableGridView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/framework/ui/widget/pulltorefresh/OnScrollListener;


# instance fields
.field final synthetic this$0:Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;


# direct methods
.method constructor <init>(Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/ScrollableGridView$1;->this$0:Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Lm/framework/ui/widget/pulltorefresh/Scrollable;IIII)V
    .locals 2

    .prologue
    .line 33
    iget-object v1, p0, Lm/framework/ui/widget/pulltorefresh/ScrollableGridView$1;->this$0:Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;

    if-gtz p3, :cond_0

    if-gtz p5, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;->access$0(Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;Z)V

    .line 34
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
