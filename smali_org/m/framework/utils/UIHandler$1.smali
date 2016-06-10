.class Lm/framework/utils/UIHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 20
    # invokes: Lm/framework/utils/UIHandler;->handleMessage(Landroid/os/Message;)V
    invoke-static {p1}, Lm/framework/utils/UIHandler;->access$0(Landroid/os/Message;)V

    .line 21
    const/4 v0, 0x0

    return v0
.end method
