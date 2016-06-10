.class Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$2;
.super Lcom/ximalaya/ting/android/opensdk/util/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ximalaya/ting/android/opensdk/util/MyAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport;

.field private final synthetic val$callback:Lcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack;

.field private final synthetic val$conditions:[Ljava/lang/String;

.field private final synthetic val$modelClass:Ljava/lang/Class;

.field private final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport;Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;Lcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$2;->this$0:Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport;

    iput-object p2, p0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$2;->val$modelClass:Ljava/lang/Class;

    iput-object p3, p0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$2;->val$values:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$2;->val$conditions:[Ljava/lang/String;

    iput-object p5, p0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$2;->val$callback:Lcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack;

    .line 58
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/util/MyAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$2;->val$modelClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$2;->val$values:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$2;->val$conditions:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$2;->val$callback:Lcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack;

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$2;->val$callback:Lcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack;

    invoke-interface {v0, p1}, Lcom/ximalaya/ting/android/opensdk/util/IDbDataCallBack;->onResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport$2;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
