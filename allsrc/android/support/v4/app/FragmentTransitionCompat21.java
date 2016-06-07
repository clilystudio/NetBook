package android.support.v4.app;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

class FragmentTransitionCompat21
{
  public static void addTargets(Object paramObject, ArrayList<View> paramArrayList)
  {
    int i = 0;
    Transition localTransition = (Transition)paramObject;
    if ((localTransition instanceof TransitionSet))
    {
      TransitionSet localTransitionSet = (TransitionSet)localTransition;
      int m = localTransitionSet.getTransitionCount();
      while (i < m)
      {
        addTargets(localTransitionSet.getTransitionAt(i), paramArrayList);
        i++;
      }
    }
    if ((!hasSimpleTarget(localTransition)) && (isNullOrEmpty(localTransition.getTargets())))
    {
      int j = paramArrayList.size();
      for (int k = 0; k < j; k++)
        localTransition.addTarget((View)paramArrayList.get(k));
    }
  }

  public static void addTransitionTargets(Object paramObject1, Object paramObject2, View paramView1, FragmentTransitionCompat21.ViewRetriever paramViewRetriever, View paramView2, FragmentTransitionCompat21.EpicenterView paramEpicenterView, Map<String, String> paramMap, ArrayList<View> paramArrayList1, Map<String, View> paramMap1, ArrayList<View> paramArrayList2)
  {
    if ((paramObject1 != null) || (paramObject2 != null))
    {
      Transition localTransition = (Transition)paramObject1;
      if (localTransition != null)
        localTransition.addTarget(paramView2);
      if (paramObject2 != null)
        addTargets((Transition)paramObject2, paramArrayList2);
      if (paramViewRetriever != null)
        paramView1.getViewTreeObserver().addOnPreDrawListener(new FragmentTransitionCompat21.2(paramView1, paramViewRetriever, paramMap, paramMap1, localTransition, paramArrayList1, paramView2));
      setSharedElementEpicenter(localTransition, paramEpicenterView);
    }
  }

  public static void beginDelayedTransition(ViewGroup paramViewGroup, Object paramObject)
  {
    TransitionManager.beginDelayedTransition(paramViewGroup, (Transition)paramObject);
  }

  public static Object captureExitingViews(Object paramObject, View paramView1, ArrayList<View> paramArrayList, Map<String, View> paramMap, View paramView2)
  {
    if (paramObject != null)
    {
      captureTransitioningViews(paramArrayList, paramView1);
      if (paramMap != null)
        paramArrayList.removeAll(paramMap.values());
      if (paramArrayList.isEmpty())
        paramObject = null;
    }
    else
    {
      return paramObject;
    }
    paramArrayList.add(paramView2);
    addTargets((Transition)paramObject, paramArrayList);
    return paramObject;
  }

  private static void captureTransitioningViews(ArrayList<View> paramArrayList, View paramView)
  {
    ViewGroup localViewGroup;
    if (paramView.getVisibility() == 0)
    {
      if (!(paramView instanceof ViewGroup))
        break label65;
      localViewGroup = (ViewGroup)paramView;
      if (!localViewGroup.isTransitionGroup())
        break label33;
      paramArrayList.add(localViewGroup);
    }
    while (true)
    {
      return;
      label33: int i = localViewGroup.getChildCount();
      for (int j = 0; j < i; j++)
        captureTransitioningViews(paramArrayList, localViewGroup.getChildAt(j));
    }
    label65: paramArrayList.add(paramView);
  }

  public static void cleanupTransitions(View paramView1, View paramView2, Object paramObject1, ArrayList<View> paramArrayList1, Object paramObject2, ArrayList<View> paramArrayList2, Object paramObject3, ArrayList<View> paramArrayList3, Object paramObject4, ArrayList<View> paramArrayList4, Map<String, View> paramMap)
  {
    Transition localTransition1 = (Transition)paramObject1;
    Transition localTransition2 = (Transition)paramObject2;
    Transition localTransition3 = (Transition)paramObject3;
    Transition localTransition4 = (Transition)paramObject4;
    if (localTransition4 != null)
      paramView1.getViewTreeObserver().addOnPreDrawListener(new FragmentTransitionCompat21.4(paramView1, localTransition1, paramView2, paramArrayList1, localTransition2, paramArrayList2, localTransition3, paramArrayList3, paramMap, paramArrayList4, localTransition4));
  }

  public static Object cloneTransition(Object paramObject)
  {
    if (paramObject != null)
      paramObject = ((Transition)paramObject).clone();
    return paramObject;
  }

  public static void excludeTarget(Object paramObject, View paramView, boolean paramBoolean)
  {
    ((Transition)paramObject).excludeTarget(paramView, paramBoolean);
  }

  public static void findNamedViews(Map<String, View> paramMap, View paramView)
  {
    if (paramView.getVisibility() == 0)
    {
      String str = paramView.getTransitionName();
      if (str != null)
        paramMap.put(str, paramView);
      if ((paramView instanceof ViewGroup))
      {
        ViewGroup localViewGroup = (ViewGroup)paramView;
        int i = localViewGroup.getChildCount();
        for (int j = 0; j < i; j++)
          findNamedViews(paramMap, localViewGroup.getChildAt(j));
      }
    }
  }

  private static Rect getBoundsOnScreen(View paramView)
  {
    Rect localRect = new Rect();
    int[] arrayOfInt = new int[2];
    paramView.getLocationOnScreen(arrayOfInt);
    localRect.set(arrayOfInt[0], arrayOfInt[1], arrayOfInt[0] + paramView.getWidth(), arrayOfInt[1] + paramView.getHeight());
    return localRect;
  }

  public static String getTransitionName(View paramView)
  {
    return paramView.getTransitionName();
  }

  private static boolean hasSimpleTarget(Transition paramTransition)
  {
    return (!isNullOrEmpty(paramTransition.getTargetIds())) || (!isNullOrEmpty(paramTransition.getTargetNames())) || (!isNullOrEmpty(paramTransition.getTargetTypes()));
  }

  private static boolean isNullOrEmpty(List paramList)
  {
    return (paramList == null) || (paramList.isEmpty());
  }

  public static Object mergeTransitions(Object paramObject1, Object paramObject2, Object paramObject3, boolean paramBoolean)
  {
    Transition localTransition1 = (Transition)paramObject1;
    Transition localTransition2 = (Transition)paramObject2;
    Transition localTransition3 = (Transition)paramObject3;
    if ((localTransition1 != null) && (localTransition2 != null));
    while (true)
    {
      if (paramBoolean)
      {
        TransitionSet localTransitionSet1 = new TransitionSet();
        if (localTransition1 != null)
          localTransitionSet1.addTransition(localTransition1);
        if (localTransition2 != null)
          localTransitionSet1.addTransition(localTransition2);
        if (localTransition3 != null)
          localTransitionSet1.addTransition(localTransition3);
        return localTransitionSet1;
      }
      Object localObject;
      if ((localTransition2 != null) && (localTransition1 != null))
        localObject = new TransitionSet().addTransition(localTransition2).addTransition(localTransition1).setOrdering(1);
      while (localTransition3 != null)
      {
        TransitionSet localTransitionSet2 = new TransitionSet();
        if (localObject != null)
          localTransitionSet2.addTransition((Transition)localObject);
        localTransitionSet2.addTransition(localTransition3);
        return localTransitionSet2;
        if (localTransition2 != null)
        {
          localObject = localTransition2;
          continue;
        }
        localObject = null;
        if (localTransition1 == null)
          continue;
        localObject = localTransition1;
      }
      return localObject;
      paramBoolean = true;
    }
  }

  public static void removeTargets(Object paramObject, ArrayList<View> paramArrayList)
  {
    Transition localTransition = (Transition)paramObject;
    if ((localTransition instanceof TransitionSet))
    {
      TransitionSet localTransitionSet = (TransitionSet)localTransition;
      int j = localTransitionSet.getTransitionCount();
      for (int k = 0; k < j; k++)
        removeTargets(localTransitionSet.getTransitionAt(k), paramArrayList);
    }
    if (!hasSimpleTarget(localTransition))
    {
      List localList = localTransition.getTargets();
      if ((localList != null) && (localList.size() == paramArrayList.size()) && (localList.containsAll(paramArrayList)))
        for (int i = -1 + paramArrayList.size(); i >= 0; i--)
          localTransition.removeTarget((View)paramArrayList.get(i));
    }
  }

  public static void setEpicenter(Object paramObject, View paramView)
  {
    ((Transition)paramObject).setEpicenterCallback(new FragmentTransitionCompat21.1(getBoundsOnScreen(paramView)));
  }

  private static void setSharedElementEpicenter(Transition paramTransition, FragmentTransitionCompat21.EpicenterView paramEpicenterView)
  {
    if (paramTransition != null)
      paramTransition.setEpicenterCallback(new FragmentTransitionCompat21.3(paramEpicenterView));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.app.FragmentTransitionCompat21
 * JD-Core Version:    0.6.0
 */