.class Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$1;
.super Lcom/ximalaya/ting/android/opensdk/util/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ximalaya/ting/android/opensdk/util/MyAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport;

.field private final synthetic val$callback:Lcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport;Lcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$1;->this$0:Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport;

    iput-object p2, p0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$1;->val$callback:Lcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack;

    .line 38
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/util/MyAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$1;->this$0:Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport;->save()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$1;->val$callback:Lcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack;

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$1;->val$callback:Lcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack;

    invoke-interface {v0, p1}, Lcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack;->onResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
