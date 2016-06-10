.class Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$3;
.super Lcom/ximalaya/ting/android/opensdk/util/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ximalaya/ting/android/opensdk/util/MyAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport;

.field private final synthetic val$callback:Lcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack;

.field private final synthetic val$ids:[J

.field private final synthetic val$isEager:Z

.field private final synthetic val$modelClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport;Ljava/lang/Class;Z[JLcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$3;->this$0:Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport;

    iput-object p2, p0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$3;->val$modelClass:Ljava/lang/Class;

    iput-boolean p3, p0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$3;->val$isEager:Z

    iput-object p4, p0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$3;->val$ids:[J

    iput-object p5, p0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$3;->val$callback:Lcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack;

    .line 79
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/util/MyAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$3;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$3;->val$modelClass:Ljava/lang/Class;

    iget-boolean v1, p0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$3;->val$isEager:Z

    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$3;->val$ids:[J

    invoke-static {v0, v1, v2}, Lorg/litepal/b/d;->findAll(Ljava/lang/Class;Z[J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$3;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$3;->val$callback:Lcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack;

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$3;->val$callback:Lcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack;

    invoke-interface {v0, p1}, Lcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack;->onResult(Ljava/lang/Object;)V

    goto :goto_0
.end method
