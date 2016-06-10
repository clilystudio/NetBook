.class Lcom/maxthon/utils/MReflect$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic this$0:Lcom/maxthon/utils/MReflect;

.field private final synthetic val$isMap:Z


# direct methods
.method constructor <init>(Lcom/maxthon/utils/MReflect;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/maxthon/utils/MReflect$1;->this$0:Lcom/maxthon/utils/MReflect;

    iput-boolean p2, p0, Lcom/maxthon/utils/MReflect$1;->val$isMap:Z

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x0

    .line 412
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/maxthon/utils/MReflect$1;->this$0:Lcom/maxthon/utils/MReflect;

    # getter for: Lcom/maxthon/utils/MReflect;->object:Ljava/lang/Object;
    invoke-static {v0}, Lcom/maxthon/utils/MReflect;->access$0(Lcom/maxthon/utils/MReflect;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/maxthon/utils/MReflect;->on(Ljava/lang/Object;)Lcom/maxthon/utils/MReflect;

    move-result-object v0

    invoke-virtual {v0, v4, p3}, Lcom/maxthon/utils/MReflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/maxthon/utils/MReflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maxthon/utils/MReflect;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/maxthon/utils/MReflectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 427
    :goto_0
    return-object v0

    .line 416
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 417
    iget-boolean v0, p0, Lcom/maxthon/utils/MReflect$1;->val$isMap:Z

    if-eqz v0, :cond_3

    .line 418
    iget-object v0, p0, Lcom/maxthon/utils/MReflect$1;->this$0:Lcom/maxthon/utils/MReflect;

    # getter for: Lcom/maxthon/utils/MReflect;->object:Ljava/lang/Object;
    invoke-static {v0}, Lcom/maxthon/utils/MReflect;->access$0(Lcom/maxthon/utils/MReflect;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 419
    if-nez p3, :cond_0

    move v2, v3

    .line 421
    :goto_1
    if-nez v2, :cond_1

    const-string v5, "get"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 422
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/maxthon/utils/MReflect;->property(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/maxthon/utils/MReflect;->access$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 419
    :cond_0
    array-length v2, p3

    goto :goto_1

    .line 423
    :cond_1
    if-nez v2, :cond_2

    const-string v5, "is"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 424
    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/maxthon/utils/MReflect;->property(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/maxthon/utils/MReflect;->access$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 425
    :cond_2
    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    const-string v2, "set"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 426
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/maxthon/utils/MReflect;->property(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/maxthon/utils/MReflect;->access$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, p3, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const/4 v0, 0x0

    goto :goto_0

    .line 431
    :cond_3
    throw v1
.end method
