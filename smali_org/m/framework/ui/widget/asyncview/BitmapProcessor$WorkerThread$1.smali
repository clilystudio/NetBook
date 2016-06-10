.class Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/framework/network/ResponseCallback;


# instance fields
.field final synthetic this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

.field private final synthetic val$file:Ljava/io/File;

.field private final synthetic val$req:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;


# direct methods
.method constructor <init>(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Ljava/io/File;Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    iput-object p2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->val$file:Ljava/io/File;

    iput-object p3, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->val$req:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/io/InputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 283
    new-instance v0, Lm/framework/ui/widget/asyncview/BitmapProcessor$PatchInputStream;

    invoke-direct {v0, p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$PatchInputStream;-><init>(Ljava/io/InputStream;)V

    .line 284
    invoke-static {v0}, Lm/framework/utils/Utils;->getBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    :cond_0
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    invoke-static {v0, v3}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V

    .line 296
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->val$file:Ljava/io/File;

    # invokes: Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->saveFile(Landroid/graphics/Bitmap;Ljava/io/File;)V
    invoke-static {v1, v0, v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$4(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 291
    if-eqz v0, :cond_2

    .line 292
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    # getter for: Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;
    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$5(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)Lm/framework/ui/widget/asyncview/BitmapProcessor;

    move-result-object v1

    # getter for: Lm/framework/ui/widget/asyncview/BitmapProcessor;->cacheMap:Ljava/util/WeakHashMap;
    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/WeakHashMap;

    move-result-object v1

    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->val$req:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    # getter for: Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->url:Ljava/lang/String;
    invoke-static {v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->val$req:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    # invokes: Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->throwComplete(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    .line 295
    :cond_2
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;->this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    invoke-static {v0, v3}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V

    goto :goto_0
.end method
